#!/usr/bin/env bash

CNF_FILE="$1"
ENV="$2"
FOOTER_FILE="$3"


# get timestamp
accessString=`mysql --defaults-extra-file="${CNF_FILE}" --defaults-group-suffix=accessbot -N -B -e "SELECT cnfsuffix, hostname, port, username, password from dbaccess, environment where environment.id=dbaccess.environment_id and environment.\\\`environment_category\\\`='WT' and environment.\\\`environment_type\\\`='$ENV'"`

read cnfsuffix host port username password <<< $accessString

timestamp=`mysql --defaults-extra-file="${CNF_FILE}" --defaults-group-suffix=accessbot -N -B -e "SELECT \\\`value\\\` from config , environment where environment.id=config.environment_id and environment.\\\`environment_category\\\`='WT' and environment.\\\`environment_type\\\`='$ENV' and   \\\`key\\\`='timestamp';"`

# change timestamp format
replacementDate=`date -d "$timestamp" +'%B %d, %Y'`

echo "replacing date in $FOOTER_FILE with $replacementDate"
 
sed -i "s/[A-Z][a-z]\{3,9\} [0-9]\{2\}, [0-9]\{4\}/$replacementDate/" $FOOTER_FILE