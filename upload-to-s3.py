import configparser
import argparse
import os
from sqlalchemy import create_engine
import pandas as pd
import boto3
import datetime
from itertools import (takewhile, repeat)
import zipfile

parser = argparse.ArgumentParser(
    description='Process table parameters')
parser.add_argument(
    '-d',
    type=str,
    nargs=1,
    help='Directory containing exported files')

parser.add_argument(
    '-c',
    type=str,
    nargs=1,
    help='File containing database config in INI format')

parser.add_argument(
    '-t',
    type=str,
    nargs=1,
    help='Database Timestamp')

parser.add_argument(
    '-e',
    type=str,
    nargs=1,
    help='Environment Type')

args = parser.parse_args()

config_file = args.c[0]
file_directory = args.d[0]
timestamp = args.t[0]
environment_type = args.e[0]
config = configparser.ConfigParser()
config.read(config_file)

access_user = config["cred_database"]["mysql_db_user"]
access_passwd = config["cred_database"]["mysql_db_password"]
access_mydb = config["cred_database"]["mysql_db_host"]
access_port = config["cred_database"]["mysql_db_port"]
access_db = config["cred_database"]["mysql_db_name"]


access_connection_string = 'mysql://' + str(access_user) + ':' + str(access_passwd) + '@' + str(
    access_mydb) + ':' + str(access_port) + '/' + str(access_db)
access_read_engine = create_engine(access_connection_string, encoding='utf-8')

aws_data = pd.read_sql(
    "SELECT      region.region AS region,     id.id AS id,     secret.secret AS secret,     bucket.bucket AS bucket FROM     (SELECT id FROM environment WHERE environment.`environment_category` = 'DW' AND environment.`environment_type` = '" + environment_type + "') env,     (SELECT `value` AS region, environment_id FROM config WHERE `key` = 'aws_key_region') region,     (SELECT `value` AS id, environment_id FROM config WHERE `key` = 'aws_key_id') id,     (SELECT `value` AS secret, environment_id FROM config WHERE `key` = 'aws_key_secret') secret,     (SELECT `value` AS bucket, environment_id FROM config WHERE `key` = 'aws_bucket') bucket WHERE     region.environment_id = env.id         AND id.environment_id = env.id         AND secret.environment_id = env.id         AND bucket.environment_id = env.id;"
    ,
    con=access_read_engine);

ACCESS_KEY_ID = aws_data.id[0]
SECRET_KEY = aws_data.secret[0]

s3 = boto3.client(
    's3',
    aws_access_key_id=ACCESS_KEY_ID,
    aws_secret_access_key=SECRET_KEY
)

header_destination_data = pd.read_sql(
    "SELECT environment_category, `key`, `value` FROM config, environment        WHERE environment.id=config.environment_id       AND environment.`environment_type`='DEV'           AND `key`  like '%%header_footer';"
    ,
    con=access_read_engine);
print(header_destination_data)
upload_paths = {}
for idx,header_destination_row in header_destination_data.iterrows():
    header_destination=header_destination_row.value
    print(header_destination)
    if header_destination not in upload_paths:
        destination_pieces = header_destination.split("/")
        # s3://pv-build-resources/20191008/header_footer.js
        BUCKET_NAME = destination_pieces[2]
        path = "/".join(destination_pieces[3:])

        put_response = s3.upload_file(
            file_directory + "/header_footer.js", BUCKET_NAME, path,
            ExtraArgs={"Metadata": {"type": "build-resource"}}
        )
        response = s3.put_object_acl(ACL='public-read', Bucket=BUCKET_NAME, Key=path)
        upload_paths[header_destination]=1
