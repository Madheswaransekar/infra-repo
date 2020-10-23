#!/bin/bash
ip_address=`curl http://169.254.169.254/latest/meta-data/public-ipv4`
echo $ip_address
record_set_name='madhes.jenkinssetup.click'
echo $record_set_name
aws route53 change-resource-record-sets --hosted-zone-id Z0333328EX6HBFMPD8VD --change-batch '{"Changes": [{"Action": "UPSERT","ResourceRecordSet": {"Name": "'"$record_set_name"'","Type": "A","TTL": 60,"ResourceRecords": [{"Value": "'"$ip_address"'"}]}}]}'
