#!/bin/bash

username=yannik
ami_id=ami-0e6b2b4ff9072b5a6 # Ubuntu 18.04 Deep Learning AMI
user_data_file=$(mktemp /tmp/user-data-XXXX.txt)

cat <<EOF >$user_data_file
#cloud-config
system_info:
  default_user:
    name: $username
EOF

instance_id=$(aws ec2 run-instances --user-data file://$user_data_file --key-name $USER --image-id $ami_id --instance-type c5n.large --output text --query 'Instances[*].InstanceId')
rm $user_data_file
echo instance_id=$instance_id

ip_address=$(aws ec2 describe-instances --instance-ids $instance_id --output text --query 'Reservations[*].Instances[*].PublicIpAddress')
echo ip_address=$ip_address

ssh yannik@$ip_address
