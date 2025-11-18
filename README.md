👋 Charles Bucher
AWS Cloud Support Engineer | CloudOps Automation | NOC Operations
Self-taught AWS engineer with 300+ GitHub contributions building monitoring, security automation, and troubleshooting solutions. Learning in public through hands-on projects with Python, Terraform, and AWS services.
📍 Pinellas Park, Florida (Remote) | 📧 charles.bucher.cloud@gmail.com | 🌐 charles-bucher.github.io
🔗 LinkedIn | 📋 Indeed Profile

🎯 About Me
Cloud Support Engineer learning through hands-on AWS projects and error-driven development. I don't just follow tutorials—I build real infrastructure in my own AWS account, break things, troubleshoot failures, and document what I learn.
What I Bring:

⚡ AWS troubleshooting skills across EC2, S3, CloudWatch, IAM, GuardDuty, Lambda
🤖 Python automation to eliminate repetitive tasks (boto3, AWS CLI)
🏗️ Infrastructure-as-code experience using Terraform and CI/CD pipelines
📊 Operational mindset: Monitoring dashboards, alerting workflows, documentation
🔧 Error-driven learning: I learn by breaking things, reading error logs, and fixing them
🏠 Remote-ready: Self-motivated, works independently, manages own schedule

Career Transition:
I'm breaking into cloud support after several years in delivery/logistics. I don't wait for a job to learn—I build real AWS infrastructure, make mistakes, troubleshoot failures, and document everything. Every project in my portfolio represents dozens of errors solved, Stack Overflow searches, and late nights debugging CloudWatch logs.
Seeking:
Remote Cloud Support Engineer, NOC Technician, or CloudOps roles (Tier 1/2) | Available for nights/weekends/on-call

🛠️ Technical Skills
Cloud Platforms: AWS (EC2, S3, Lambda, CloudWatch, GuardDuty, RDS, IAM, VPC, SNS, EventBridge, ECS) | Linux basics
Automation & Scripting: Python (boto3) | Bash | Terraform | AWS CLI | GitHub Actions | CI/CD pipelines
CloudOps & NOC: Monitoring | Incident response | Alerting | Root cause analysis | Runbooks | Documentation
Security & Observability: Threat detection | GuardDuty | Log analysis | Dashboard creation | IAM troubleshooting
Development Tools: Git | VS Code | Docker | Flask | Markdown | YAML/JSON
Show Image
Show Image
Show Image
Show Image
Show Image
Show Image
Show Image

🎓 Learning Path
How I'm Learning:

Error-driven development: I build projects, encounter errors, troubleshoot them, and document solutions
Hands-on labs: 300+ GitHub contributions in 2024 through AWS projects
Real infrastructure: EC2, S3, Lambda, CloudWatch, IAM, GuardDuty, VPC, Terraform, Python
Documentation-first: Every error I solve becomes a troubleshooting guide for future reference

Why This Approach Works:
I don't memorize theory—I learn by breaking things and fixing them. Every CloudWatch alarm misconfiguration, every IAM permission error, every Terraform state conflict has taught me more than any tutorial could. Cloud support is about troubleshooting real problems, and that's exactly what I practice every day.

📂 Cloud Support Projects (What I've Built Through Trial & Error)
🔹 AWS Troubleshooting Lab
Learning AWS Support Through Real-World Scenarios
What This Is:
A collection of AWS problems I've encountered and solved while building infrastructure. Each scenario documents the error, my troubleshooting process, and the solution.
What I've Documented:

EC2 connectivity failures (security groups, NACLs, routing tables)
IAM permission denied errors and policy debugging
S3 access denied scenarios and bucket policy fixes
Lambda timeout and memory limit issues
CloudWatch log analysis and error pattern identification

Real Errors I've Solved:

UnauthorizedOperation: You are not authorized to perform this operation → IAM policy troubleshooting
Connection timed out (port 22) → Security group and NACL configuration
Access Denied on S3 → Bucket policies vs IAM roles vs ACLs debugging
Task timed out after 3.00 seconds → Lambda memory and timeout tuning

Why This Matters:
These aren't hypothetical problems—these are real errors I've hit while building projects. I learned cloud support by doing the actual work support engineers do: reading error messages, checking logs, testing solutions, and documenting fixes.
Skills I'm Developing:
AWS troubleshooting | Root cause analysis | EC2 diagnostics | IAM debugging | S3 permissions | Lambda logs | CloudWatch analysis | Error pattern recognition | Documentation
Tech Stack: AWS (EC2, S3, Lambda, IAM, CloudWatch, VPC) | AWS CLI | Python (boto3) | Bash
📂 View Repository | 📝 MIT License

🔹 AWS Monitoring & Observability
Building a Real-Time Monitoring System (Through Multiple Failures)
What This Is:
A hands-on project where I built automated monitoring and alerting for AWS infrastructure using CloudWatch and SNS—after dozens of misconfigured alarms, false positives, and alerting failures.
What I Built:

15+ CloudWatch alarms tracking CPU, memory, disk, and network metrics across EC2 instances
SNS email/SMS notifications for threshold breaches
Custom CloudWatch dashboards for operational visibility
Terraform automation for repeatable infrastructure deployment
GitHub Actions CI/CD pipeline for automated testing

Errors I Encountered & Fixed:

Alarm thresholds set too low → learned to tune based on baseline metrics
SNS topic permissions misconfigured → no alerts delivered for 2 days
CloudWatch agent not collecting custom metrics → troubleshooting log collection
Terraform state conflicts during deployment → learned state management
False positives flooding email → implemented composite alarms and evaluation periods

What I Learned:

How to design monitoring strategies that catch real issues without alert fatigue
How to tune alarm thresholds by analyzing CloudWatch metrics over time
How to troubleshoot "why aren't my alarms triggering?" (SNS permissions, metric filters, evaluation periods)
How to automate infrastructure deployment with Terraform (after breaking state files multiple times)

Skills I'm Developing:
Incident response | Monitoring architecture | Alerting workflows | Infrastructure-as-code | CloudWatch metrics | Threshold tuning | Dashboard creation | False positive reduction | Error debugging
Tech Stack: Python (boto3) | AWS CloudWatch | SNS | EC2 | Terraform | GitHub Actions
📂 View Repository | 📸 Screenshots

🔹 CloudOps GuardDuty Automation
Automating Security Threat Detection (After Learning From Misconfigurations)
What This Is:
A project where I automated AWS GuardDuty security monitoring with EventBridge and SNS—after initially building a system that missed threats, sent duplicate alerts, and had broken notification pipelines.
What I Built:

AWS GuardDuty threat detection deployment
Automated response pipeline: GuardDuty → EventBridge → SNS → Alerts
Incident response runbooks documenting investigation steps for common threats
Terraform automation with CI/CD via GitHub Actions
Multi-channel alerting (email, SMS, Slack)

Errors I Encountered & Fixed:

EventBridge rules not triggering → learned about event pattern matching and rule syntax
GuardDuty findings not routing to SNS → IAM role permissions debugging
Duplicate alerts flooding Slack → implemented deduplication logic
Terraform apply failures → learned about resource dependencies and ordering
False positive crypto mining alerts → learned to tune GuardDuty threat intelligence

What I Learned:

How GuardDuty detects security threats (compromised credentials, crypto mining, unauthorized access)
How to debug event-driven architectures when events aren't flowing correctly
How to build runbooks by documenting actual threat investigations
How security automation reduces manual work (after experiencing manual alert triage pain)
How to troubleshoot CI/CD pipeline failures and GitHub Actions workflow errors

Skills I'm Developing:
Security automation | Threat detection | Incident response | Event-driven architecture debugging | CI/CD pipelines | Infrastructure-as-code | Security finding triage | Runbook creation | EventBridge troubleshooting
Tech Stack: AWS GuardDuty | EventBridge | SNS | Lambda | Terraform | GitHub Actions | Python
📂 View Repository | 📝 MIT License | 📸 Screenshots

🔹 NOC Toolkit Automation
Building a NOC-Style Monitoring Dashboard (Through Debugging Hell)
What This Is:
A Python-based monitoring dashboard project where I learned NOC operations by building a system that initially crashed, reported incorrect status, and had broken alerting.
What I Built:

Python monitoring system tracking device health, uptime, and response times
JSON-based device configuration for flexible monitoring
Flask web dashboard with real-time status visualization
Automated threshold-based alerting for downtime, latency, and packet loss
AWS CloudWatch integration for log aggregation

Errors I Encountered & Fixed:

Flask app crashed with TypeError: 'NoneType' object is not iterable → learned defensive programming
Monitoring script reported "all systems healthy" during actual downtime → fixed logic errors
Alerts not triggering for legitimate issues → debugged threshold logic and notification pipeline
Dashboard showing stale data → implemented proper refresh mechanisms
JSON config parsing failures → added validation and error handling

What I Learned:

How NOC teams monitor infrastructure at scale
How to build dashboards that provide at-a-glance visibility
How automated alerting reduces manual monitoring effort
How to debug Python applications when they fail in production
How to structure monitoring systems for maintainability

Skills I'm Developing:
NOC operations | Dashboard development | Alerting workflows | Python scripting | Operational automation | Device monitoring | Real-time visualization | Error handling | Debugging
Tech Stack: Python | Flask | AWS CloudWatch | JSON configuration | Docker
📂 View Repository | 📸 Screenshots

🔹 Portfolio Website
Professional Portfolio Showcasing My Work
What This Is:
A portfolio site I built to showcase my cloud projects with professional presentation for recruiters and hiring managers.
What I Built:

Portfolio site with HTML, CSS, JavaScript, Jekyll
Project showcase with 17+ screenshots demonstrating hands-on AWS work
Automated deployment via GitHub Pages
Responsive design for mobile and desktop

Tech Stack: HTML | CSS | JavaScript | Jekyll | GitHub Pages
🌐 View Live Site | 📂 View Repository

💼 Work Experience
Delivery Driver | Part-Time | 2020–Present

Manage time-sensitive logistics requiring independent problem-solving
Resolve issues with minimal supervision
Maintain consistent on-time delivery rate through efficient planning

Transferable Skills: Problem-solving under pressure, customer service, time management, working independently

🎯 Why I'm Worth Considering
What I Bring to the Table
✅ I Actually Know AWS — I've built real infrastructure in my own AWS account, not just watched tutorials
✅ I Solve Problems Through Debugging — 300+ GitHub contributions prove I can troubleshoot and fix issues independently
✅ I Learn From Errors — Every project includes documented failures and how I fixed them
✅ I Document Everything — Every error I solve becomes a troubleshooting guide
✅ I'm Self-Motivated — I don't need hand-holding; I research, test, break, fix, and figure things out
What You'd Be Getting
If you give me AWS console access, a ticketing system, and documentation, I'll:

Troubleshoot EC2, S3, CloudWatch, IAM, and GuardDuty issues independently
Document solutions clearly for knowledge base articles
Automate repetitive tasks through Python scripting
Learn quickly from errors and contribute from day one

My approach: I don't panic when things break—I read error messages, check logs, test hypotheses, and document solutions. That's cloud support.

📈 What I'm Looking For
Role: Cloud Support Engineer | NOC Technician | CloudOps (Tier 1/2)
Location: Remote (Pinellas Park, Florida)
Availability: Full-time | Willing to work nights/weekends/on-call
Ideal Company: Values self-taught engineers | Remote-first | Growth opportunities | Supportive learning environment

📧 Let's Connect
I'm a self-taught engineer who learns by building, breaking, and fixing things. If you're looking for someone who's genuinely passionate about cloud infrastructure and troubleshooting—let's talk.
📧 charles.bucher.cloud@gmail.com
🔗 LinkedIn
🌐 Portfolio
💻 GitHub
📋 Indeed Profile

🔍 ATS Keywords for Recruiters
Cloud Support Engineer NOC Technician CloudOps AWS Monitoring Incident Response CloudWatch GuardDuty EC2 Troubleshooting S3 Lambda IAM Python Automation boto3 Terraform Infrastructure as Code CI/CD GitHub Actions Alerting Systems Security Monitoring Threat Detection Root Cause Analysis Operational Runbooks Documentation 24/7 Support Linux AWS CLI SNS EventBridge VPC Remote Work Self-Taught Error-Driven Learning Debugging Log Analysis

If you're looking for a self-motivated engineer who learns by doing and isn't afraid to break things—let's talk.2 / 2RetryClaude can make mistakes. Please double-check responses.