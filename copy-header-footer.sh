#!/usr/bin/env bash

CNF_FILE="$1"
ENV="$2"
CATEGORY="$3"

echo "$ENV"
deploymentSite=`mysql --defaults-extra-file="${CNF_FILE}" --defaults-group-suffix=accessbot -N -B -e "SELECT \\\`value\\\` from config, environment where environment.id=config.environment_id and environment.\\\`environment_category\\\`='$CATEGORY' and environment.\\\`environment_type\\\`='$ENV' and \\\`key\\\`='deployment_site';"`

deploymentLocation=`mysql --defaults-extra-file="${CNF_FILE}" --defaults-group-suffix=accessbot -N -B -e "SELECT \\\`value\\\` from config, environment where environment.id=config.environment_id and environment.\\\`environment_category\\\`='$CATEGORY' and environment.\\\`environment_type\\\`='$ENV' and \\\`key\\\` like '%header_footer_dest';"`

sourceLocation=`mysql --defaults-extra-file="${CNF_FILE}" --defaults-group-suffix=accessbot -N -B -e "SELECT \\\`value\\\` from config, environment where environment.id=config.environment_id and environment.\\\`environment_category\\\`='$CATEGORY' and environment.\\\`environment_type\\\`='$ENV' and \\\`key\\\` like '%header_footer';"`

deploymentUser=`mysql --defaults-extra-file="${CNF_FILE}" --defaults-group-suffix=accessbot -N -B -e "SELECT \\\`value\\\` from config, environment where environment.id=config.environment_id and environment.\\\`environment_category\\\`='$CATEGORY' and environment.\\\`environment_type\\\`='$ENV' and \\\`key\\\`='deployment_site_user';"`

aws s3 cp $sourceLocation .
echo "From $sourceLocation to $deploymentLocation"

rsync -avrO --no-perms -e ssh header_footer.js "${deploymentUser}"@"${deploymentSite}":"${deploymentLocation}"