AWS Lambda Alerting Tool
TL;DR

This project demonstrates automated alerting in AWS using Lambda functions, CloudWatch, and SNS.
It monitors events (e.g., failed EC2 startups, billing anomalies, or S3 bucket changes) and sends real-time notifications to Slack, email, or SMS.

Quick Start

Clone the repo:

git clone https://github.com/yourusername/lambda-alerting.git
cd lambda-alerting


Install dependencies:

pip install -r requirements.txt


Deploy Lambda using AWS CLI or Terraform:

aws lambda create-function \
    --function-name LambdaAlert \
    --runtime python3.11 \
    --role <YOUR_IAM_ROLE_ARN> \
    --handler main.handler \
    --zip-file fileb://deployment.zip


Configure CloudWatch events or S3 triggers to invoke the Lambda function.

Test alerts by generating sample events.

Incident Scenarios
Scenario	Trigger	Expected Alert
EC2 fails to start	CloudWatch Event: EC2 StateChange	Slack + Email notification
S3 bucket upload	S3 Event Notification	Slack message with file name
Billing anomaly	CloudWatch Billing Alarm	SMS to admin
Skills Demonstrated

Python AWS Lambda development

AWS SDK (boto3) usage

Event-driven architecture with CloudWatch and SNS

Logging, monitoring, and automated alerting

Infrastructure-as-Code (Terraform or SAM)

Installation

Create an IAM role with Lambda execution permissions.

Deploy Lambda function(s) using CLI, SAM, or Terraform.

Configure event sources and SNS topics.

Verify logging via CloudWatch.

License

This project is licensed under the MIT License. See LICENSE.md for details.


## Overview
This project demonstrates practical Cloud Support & CloudOps skills by working with AWS services such as SNS, Terraform, IAM, EC2, CloudWatch, S3, Lambda.

## What I Learned
Hands-on experience troubleshooting AWS incidents, applying automation, monitoring with CloudWatch, and ensuring cloud reliability.
