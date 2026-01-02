# AWS Cloud Support & CloudOps Portfolio

[![AWS](https://img.shields.io/badge/AWS-Solutions_Architect-FF9900?logo=amazonaws&logoColor=white)](https://aws.amazon.com/certification/certified-solutions-architect-associate/)
[![Python](https://img.shields.io/badge/Python-3.9+-3776AB?logo=python&logoColor=white)](https://www.python.org/)
[![Terraform](https://img.shields.io/badge/Terraform-1.0+-7B42BC?logo=terraform&logoColor=white)](https://www.terraform.io/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

> **Portfolio Site:** [charles-bucher.github.io](https://charles-bucher.github.io)  
> **GitHub:** [@charles-bucher](https://github.com/charles-bucher)  
> **LinkedIn:** [charles-bucher-cloud](https://www.linkedin.com/in/charles-bucher-26598728b)

---

## 🎯 TL;DR

**AWS Cloud Support Engineer** building production-style cloud infrastructure, incident response automation, and monitoring systems. Specializing in troubleshooting AWS environments, automating alerts, and resolving customer-facing cloud issues.

**Core Expertise:**
- **AWS Services:** EC2, VPC, S3, RDS, Lambda, IAM, CloudWatch, GuardDuty, CloudTrail, SNS/SQS
- **CloudOps:** Monitoring automation, incident response, self-healing pipelines, cost optimization
- **Tools:** Python, Terraform, Flask, Boto3, Git/GitHub Actions
- **Focus:** Cloud Support, NOC operations, troubleshooting multi-tier applications

**Proven Work:**
- 5 public repositories: Cloud Support labs, cost optimization, incident simulations
- Real AWS customer support scenarios: EC2 failures, S3 access issues, Lambda errors, GuardDuty alerts
- Built cost analysis tools to identify underutilized resources and optimize spending
- Hands-on troubleshooting labs with intentionally broken AWS environments

---

## ⚡ Quick Start

### View Portfolio
Visit [charles-bucher.github.io](https://charles-bucher.github.io) to see live demos and project walkthroughs.

### Clone This Repo
```bash
git clone https://github.com/charles-bucher/charles-bucher.github.io.git
cd charles-bucher.github.io
```

### Run Locally
```bash
# Install dependencies
pip install -r requirements.txt

# Run local server
python src/main.py

# Open browser to http://localhost:8000
```

### Explore Projects
- **[AWS CloudOps Suite](https://github.com/charles-bucher/AWS_Cloudops_Suite)** - Cloud Support & DevOps automation with Terraform, CI/CD, monitoring, and AWS security
- **[AWS Cloud Support Sim](https://github.com/charles-bucher/AWS_Cloud_Support_Sim)** - Hands-on AWS Cloud Support labs for troubleshooting EC2, S3, Lambda, and GuardDuty incidents
- **[AWS Error-Driven Troubleshooting Lab](https://github.com/charles-bucher/AWS_Error_Driven_Troubleshooting_Lab)** - Intentionally broken AWS scenarios for hands-on troubleshooting practice
- **[AWS Cost Optimization Tool](https://github.com/charles-bucher/AWS-Cost-Optimization-Tool-)** - PowerShell/Python utility to analyze and optimize AWS spending with actionable recommendations
- **[Portfolio Site](https://github.com/charles-bucher/charles-bucher)** - Main portfolio showcasing AWS CloudOps & IT Support projects

---

## 🚨 Incident Scenarios

### Scenario 1: EC2 High CPU Alert
**Customer Report:** "Our application is running slow and users are timing out"

**Investigation Steps:**
1. Check CloudWatch metrics for EC2 CPU utilization
2. Review application logs in CloudWatch Logs
3. Analyze VPC Flow Logs for traffic patterns
4. Identify resource bottleneck

**Resolution:**
- Scaled EC2 instance from t3.medium → t3.large
- Implemented Auto Scaling based on CPU metrics
- Set up CloudWatch alarms for proactive monitoring
- Documented runbook for future incidents

**Technologies:** EC2, CloudWatch, Auto Scaling, SNS

**View Code:** [AWS_Cloudops_Suite](https://github.com/charles-bucher/AWS_Cloudops_Suite)

---

### Scenario 2: S3 Access Denied Error
**Customer Report:** "Users getting 403 errors when accessing S3 bucket"

**Investigation Steps:**
1. Review S3 bucket policy and ACLs
2. Check IAM user/role permissions
3. Verify VPC endpoint configuration (if private access)
4. Test with AWS CLI to reproduce issue

**Resolution:**
- Identified overly restrictive bucket policy
- Updated IAM policy with correct s3:GetObject permissions
- Added condition for source VPC endpoint
- Tested and validated access restoration

**Technologies:** S3, IAM, VPC Endpoints, CloudTrail

**View Code:** [AWS_Error_Driven_Troubleshooting_Lab](https://github.com/charles-bucher/AWS_Error_Driven_Troubleshooting_Lab)

---

### Scenario 3: VPC Network Connectivity Issues
**Customer Report:** "EC2 instances can't communicate across subnets"

**Investigation Steps:**
1. Check route table configurations
2. Verify Network ACLs (inbound/outbound rules)
3. Review Security Group rules
4. Test connectivity with VPC Reachability Analyzer

**Resolution:**
- Found missing route in private subnet route table
- Updated NACL to allow required ports
- Modified Security Group to enable inter-subnet traffic
- Documented network architecture diagram

**Technologies:** VPC, Route Tables, NACLs, Security Groups

**View Code:** [AWS_Cloud_Support_Sim](https://github.com/charles-bucher/AWS_Cloud_Support_Sim)

---

### Scenario 4: GuardDuty Security Alert
**Customer Report:** "Received GuardDuty alert about unusual API calls"

**Investigation Steps:**
1. Review GuardDuty finding details
2. Check CloudTrail logs for API activity
3. Identify compromised IAM credentials
4. Assess scope of unauthorized access

**Resolution:**
- Disabled compromised IAM access keys immediately
- Rotated credentials and enforced MFA
- Implemented automated GuardDuty → Lambda → SNS alert pipeline
- Created incident response playbook

**Technologies:** GuardDuty, CloudTrail, Lambda, SNS, IAM

**View Code:** [AWS_Cloudops_Suite](https://github.com/charles-bucher/AWS_Cloudops_Suite)

---

## 📦 Installation

### Prerequisites
- Python 3.9+
- AWS CLI configured
- Terraform 1.0+ (for infrastructure demos)
- Git

### Local Development Setup

```bash
# Clone the repository
git clone https://github.com/charles-bucher/charles-bucher.github.io.git
cd charles-bucher.github.io

# Create virtual environment
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate

# Install dependencies
pip install -r requirements.txt

# Set up AWS credentials (if testing AWS integrations)
aws configure

# Run development server
python src/main.py
```

### Running Individual Projects

Each project has its own README with specific setup instructions:

**AWS CloudOps Suite:**
```bash
cd AWS_Cloudops_Suite
terraform init
terraform plan
terraform apply
```

**AWS Cloud Support Sim:**
```bash
cd AWS_Cloud_Support_Sim
# Follow incident scenarios in docs/
python scripts/simulate_incident.py
```

**AWS Cost Optimization Tool:**
```bash
cd AWS-Cost-Optimization-Tool-
pip install -r requirements.txt
python cost_optimizer.py --profile default
```

---

## 🛠️ Tech Stack

### AWS Services
- **Compute:** EC2, Lambda, Auto Scaling
- **Storage:** S3, EBS
- **Networking:** VPC, Route 53, CloudFront, Elastic Load Balancing
- **Database:** RDS (MySQL/PostgreSQL)
- **Security:** IAM, GuardDuty, CloudTrail, AWS Config
- **Monitoring:** CloudWatch (Metrics, Logs, Alarms), SNS, EventBridge
- **Infrastructure as Code:** CloudFormation, Terraform

### Languages & Tools
- **Languages:** Python, Bash, HCL (Terraform)
- **Frameworks:** Flask, Boto3
- **DevOps:** Git, GitHub Actions, CI/CD pipelines
- **Monitoring:** CloudWatch Dashboards, CloudWatch Insights
- **Documentation:** Markdown, draw.io (architecture diagrams)

---

## 📚 Projects Overview

| Project | Description | Tech Stack | Status |
|---------|-------------|------------|--------|
| [AWS CloudOps Suite](https://github.com/charles-bucher/AWS_Cloudops_Suite) | Cloud Support & DevOps automation with Terraform, CI/CD, monitoring, and AWS security | Python, AWS, Terraform, CI/CD | ✅ Complete |
| [AWS Cloud Support Sim](https://github.com/charles-bucher/AWS_Cloud_Support_Sim) | Hands-on AWS Cloud Support labs for troubleshooting EC2, S3, Lambda, and GuardDuty incidents using real support workflows | Python, AWS, Lambda, S3, EC2 | ✅ Complete |
| [AWS Error-Driven Troubleshooting Lab](https://github.com/charles-bucher/AWS_Error_Driven_Troubleshooting_Lab) | Intentionally broken AWS scenarios for hands-on troubleshooting - logs, metrics, root cause analysis, remediation | AWS, HTML, CloudWatch, EC2, S3 | ✅ Complete |
| [AWS Cost Optimization Tool](https://github.com/charles-bucher/AWS-Cost-Optimization-Tool-) | PowerShell/Python utility to analyze AWS spending, identify underutilized resources, and provide cost-saving recommendations | PowerShell, Python, AWS, Cost Explorer | ✅ Complete |
| [Portfolio Site](https://github.com/charles-bucher/charles-bucher) | Main portfolio website showcasing AWS CloudOps & IT Support projects with hands-on cloud labs | HTML, AWS, Python, Terraform, CloudFormation | ✅ Complete |

---

## 🎓 Certifications & Learning Path

### Current
- **AWS Solutions Architect Associate (SAA)** - Target: January 2026

### Planned
- AWS SysOps Administrator Associate - Target: June 2026
- CompTIA Security+ - Target: November 2026
- AWS Security Specialty - Target: 2027

### Self-Directed Learning
- 450+ commits across 6 repositories in 3 months
- Daily hands-on AWS practice with real-world scenarios
- Continuous portfolio updates and skill development

---

## 💼 Experience Highlights

### Hands-On AWS CloudOps Work
- Built cost optimization tools that identify underutilized AWS resources and provide actionable recommendations
- Created AWS Cloud Support simulation labs with real customer ticket scenarios (EC2, S3, Lambda, GuardDuty)
- Deployed intentionally broken AWS environments for hands-on troubleshooting practice
- Automated monitoring, security, and CI/CD workflows with Terraform and Python
- Simulated and resolved 20+ real-world AWS incident scenarios with documented runbooks

### Transferable Skills from Current Role
- **10+ years delivery operations:** Time-sensitive problem-solving, independent troubleshooting, documentation
- **5+ years operations management:** Process optimization, team training, incident handling under pressure
- **Customer-facing experience:** Clear communication during high-stress situations, conflict resolution

---

## 🎯 Career Goals

**Immediate Goal (Next 6 months):**
- Secure Cloud Support Engineer or Junior CloudOps role
- Pass AWS Solutions Architect Associate certification
- Continue building hands-on AWS experience through projects

**Mid-Term Goals (12-18 months):**
- Transition to full-time W2 Cloud Support/Operations role
- Obtain AWS SysOps Administrator and Security+ certifications
- Gain production cloud operations experience

**Long-Term Goals (2-3 years):**
- Senior Cloud Operations Engineer or DevOps Engineer role
- Build freelance AWS consulting practice
- Achieve $100k+ annual income through combination of W2 and contract work

---

## 🤝 Contact

**Looking for:** Cloud Support Engineer, Cloud Operations Engineer, Technical Support Engineer (AWS), Junior CloudOps roles

**Location:** Pinellas Park, Florida (Tampa Bay Area)  
**Remote:** Open to remote opportunities  
**Availability:** Immediate (2-week notice)

**Connect with me:**
- 📧 Email: [Contact via LinkedIn](https://www.linkedin.com/in/charles-bucher-26598728b)
- 💼 LinkedIn: [linkedin.com/in/charles-bucher-26598728b](https://www.linkedin.com/in/charles-bucher-26598728b)
- 🐙 GitHub: [@charles-bucher](https://github.com/charles-bucher)
- 🌐 Portfolio: [charles-bucher.github.io](https://charles-bucher.github.io)
- 📄 Indeed: [profile.indeed.com/p/charlesb-x0xr5fx](https://profile.indeed.com/p/charlesb-x0xr5fx)

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

**Note:** All AWS infrastructure code is for demonstration purposes. Always follow AWS best practices and security guidelines in production environments.

---

## ⭐ Acknowledgments

- AWS documentation and tutorials
- CloudOps and DevOps community resources
- Self-taught developer community for inspiration and guidance

---

## 📊 Portfolio Statistics

![GitHub Stats](https://github-readme-stats.vercel.app/api?username=charles-bucher&show_icons=true&theme=dark)

**Recent Activity:**
- 5 public repositories
- Active daily contributions
- Continuous portfolio expansion
- Focus: Cloud Support, incident response, cost optimization

---

**Last Updated:** December 2025

**Status:** 🟢 Actively seeking Cloud Support/CloudOps opportunities

---

## 🔥 Why Hire Me?

✅ **Hands-on AWS experience** - Not just tutorials, real Cloud Support simulation labs and troubleshooting scenarios  
✅ **Self-motivated learner** - 5 production-style repositories built while working full-time  
✅ **Customer support mindset** - 10+ years resolving time-sensitive operational issues  
✅ **Documentation-focused** - Clear runbooks, incident scenarios, detailed troubleshooting guides  
✅ **Cost-conscious** - Built AWS cost optimization tools to identify savings opportunities  
✅ **Reliable and consistent** - 10-year track record of showing up and delivering  

**I don't just know AWS—I build, break, and fix it. Let's talk about how I can support your cloud operations.**
## Deployment
Content to be added.

## Architecture
Content to be added.

## Setup Instructions
1. Clone the repo
2. Install dependencies (`pip install -r requirements.txt` or as needed)
3. Configure environment variables if required
4. Run scripts or tests

## Usage Examples
```bash
python script_name.py --example-arg value
```
Replace with actual usage commands for this repo.

## Screenshots
Include screenshots of outputs, dashboards, or any UI here. Example:
![Example](path_to_screenshot.png)


## Overview
_TODO: Describe this section._


## Features
_TODO: Describe this section._


## Skills Demonstrated
_TODO: Describe this section._


## License
_TODO: Describe this section._


## AWS Services Used
- EC2
- VPC
- S3
- IAM
- CloudWatch
- CloudTrail
- GuardDuty
- AWS Config
- Terraform

> Services listed here are actively used in real troubleshooting, monitoring, and remediation workflows.



## Cost Considerations
This project was built with cost-awareness in mind:
- Free tier–safe resource sizing
- Explicit teardown steps included
- Logging scoped to avoid unnecessary ingestion costs
- Monitoring configured to balance visibility vs spend

> Demonstrates real-world cloud cost responsibility.



## Operational Responsibility & Risk Mitigation
This lab simulates production support responsibilities:
- Incident-driven troubleshooting
- Security signal investigation (GuardDuty findings)
- Audit visibility via CloudTrail and Config
- Infrastructure reproducibility using Terraform

This reflects SysOps-style ownership, not tutorial-only usage.


## What I Learned
Hands-on experience troubleshooting AWS incidents, applying automation, monitoring with CloudWatch, and ensuring cloud reliability.
