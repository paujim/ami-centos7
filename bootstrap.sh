#!/bin/bash

echo "..........................................................................Update"
sudo yum -y update

# Prerequisites
echo "...................................................................Prerequisites"
sudo yum -y install zip unzip python36

# aws.cli
echo ".........................................................................aws.cli"
pip3 install awscli --upgrade --user

# aws.cloudwatch.agent
echo "............................................................aws.cloudwatch.agent"
curl "https://s3.amazonaws.com/amazoncloudwatch-agent/centos/amd64/latest/amazon-cloudwatch-agent.rpm" -o "amazon-cloudwatch-agent.rpm"
sudo rpm -U ./amazon-cloudwatch-agent.rpm
rm amazon-cloudwatch-agent.rpm
