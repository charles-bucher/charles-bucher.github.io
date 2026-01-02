# charles-bucher.github.io

Simulates real-world AWS Cloud Support scenarios to demonstrate troubleshooting, automation, and operational excellence.

## Features
- Error-driven labs (EC2, S3, Lambda, IAM)
- IaC templates for automated environment deployment
- Monitoring & alerting scenarios
- Emphasis on operational signals & best practices

![Environment Diagram](docs/screenshots/environment_diagram.png)

---

## Project Structure

| Folder/File | Purpose |
|-------------|---------|
| iac/        | Terraform / CloudFormation templates for environment setup |
| labs/       | Scenario-driven troubleshooting exercises |
| scripts/    | Automation scripts to replicate/fix errors |
| docs/       | Supporting diagrams, notes, screenshots |
| README.md   | You are here 🙂 |

---

## Scenario Walkthroughs (SysOps Narrative)

| Scenario | Problem | Investigation | Solution | Result |
|----------|---------|---------------|----------|--------|
| Example Scenario | Problem | Investigation | Solution | Result |


![Scenario Screenshot](docs/screenshots/scenario_example.png)

---

## Infrastructure as Code

This repo uses Terraform to deploy the lab environment automatically.

**Deployment Commands:**
\\\ash
terraform init
terraform apply
terraform destroy
\\\

Screenshot placeholder: ![IaC Deployment](docs/screenshots/iac_deployment.png)

---

## Monitoring & Operational Signals

Example workflow:

- Alert: Lambda function failed
- Investigation: Checked CloudWatch logs
- Action: Updated IAM role & redeployed
- Outcome: Function passed all tests

Screenshot placeholder: ![Monitoring](docs/screenshots/monitoring_example.png)

---

## Skills Demonstrated

- AWS Core Services: EC2, S3, IAM, Lambda
- IaC: Terraform / CloudFormation
- Monitoring & Troubleshooting: CloudWatch, Alarms, Logs
- Automation & Remediation Scripts
- Operational Excellence: Ticketing mindset, error-driven labs
