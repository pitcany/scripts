#!/bin/bash

yourinstanceid=i-0400050a4c22add3c
#yourinstanceid=$1
aws ec2 describe-instance-status --instance-ids $yourinstanceid

ip_address=$(aws ec2 describe-instances --instance-ids $instance_id --output text --query 'Reservations[*].Instances[*].PublicIpAddress')
echo $ip_address
