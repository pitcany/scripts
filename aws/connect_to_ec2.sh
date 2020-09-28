#!/bin/bash

ip_address=$(aws ec2 describe-instances --instance-ids $instance_id --output text --query 'Reservations[*].Instances[*].PublicIpAddress')
echo ip_address=$ip_address

ssh -L 8888:localhost:8888 yannik@$ip_address
