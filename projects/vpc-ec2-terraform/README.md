AWS VPC & EC2 Terraform Deployment
TL;DR

This project demonstrates provisioning a secure AWS environment with a VPC, subnets, security groups, and EC2 instances using Terraform.
It showcases infrastructure-as-code (IaC) best practices for cloud operations and automation.

Quick Start

Clone the repo:

git clone https://github.com/yourusername/aws-vpc-ec2-terraform.git
cd aws-vpc-ec2-terraform


Initialize Terraform:

terraform init


Plan the deployment:

terraform plan


Apply the deployment:

terraform apply


Verify in the AWS console:

Check VPC, subnets, route tables

Confirm EC2 instances are running and reachable

Destroy resources when done:

terraform destroy

Incident Scenarios
Scenario	Expected Outcome	Notes
EC2 instance fails to launch	Terraform shows error	Verify subnet availability & IAM permissions
VPC misconfiguration	Security group blocks traffic	Use Terraform plan to catch issues before apply
Public access required	EC2 instance accessible via SSH	Ensure security group rules allow port 22
Skills Demonstrated

Terraform IaC for AWS

Networking fundamentals (VPC, subnets, routing, IGW, NAT)

Security best practices (security groups, least privilege IAM)

EC2 provisioning & automation

Debugging and troubleshooting Terraform errors

Installation

Install Terraform (v1.6+ recommended)

Configure AWS CLI with credentials and default region

Modify variables.tf for your custom configuration (VPC CIDR, instance type, AMI)

Run terraform init, plan, and apply

License

This project is licensed under the MIT License. See LICENSE.md for details.
## Overview
This project demonstrates practical Cloud Support & CloudOps skills by working with AWS services such as EC2, Terraform, IAM, VPC.

## Usage
Clone the repo and follow the scripts or Terraform configurations to deploy and test resources. Designed to simulate realistic AWS cloud incidents.

## What I Learned
Hands-on experience troubleshooting AWS incidents, applying automation, monitoring with CloudWatch, and ensuring cloud reliability.
