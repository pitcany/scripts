#!/bin/bash

yourinstanceid=i-0400050a4c22add3c
#yourinstanceid=$1
aws ec2 stop-instances --instance-ids $yourinstanceid
