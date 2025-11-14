#!/bin/bash
# AWS Project Scaffold Generator
# Creates complete project structure with Terraform, documentation, and best practices

set -e  # Exit on error

# Color output functions
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

success() { echo -e "${GREEN}✓${NC} $1"; }
info() { echo -e "${CYAN}→${NC} $1"; }
error() { echo -e "${RED}✗${NC} $1"; exit 1; }
warn() { echo -e "${YELLOW}!${NC} $1"; }

# Parse arguments
PROJECT_NAME=""
PROJECT_TYPE="webapp"
AWS_REGION="us-east-1"

usage() {
    echo "Usage: $0 -n PROJECT_NAME [-t PROJECT_TYPE] [-r AWS_REGION]"
    echo ""
    echo "Options:"
    echo "  -n    Project name (required)"
    echo "  -t    Project type: monitoring, networking, webapp, security, storage (default: webapp)"
    echo "  -r    AWS region (default: us-east-1)"
    echo ""
    echo "Examples:"
    echo "  $0 -n my-monitoring-system -t monitoring"
    echo "  $0 -n vpc-architecture -t networking -r us-west-2"
    exit 1
}

while getopts "n:t:r:h" opt; do
    case $opt in
        n) PROJECT_NAME="$OPTARG" ;;
        t) PROJECT_TYPE="$OPTARG" ;;
        r) AWS_REGION="$OPTARG" ;;
        h) usage ;;
        *) usage ;;
    esac
done

# Validate required arguments
if [ -z "$PROJECT_NAME" ]; then
    error "Project name is required. Use -n flag."
fi

# Validate project type
case $PROJECT_TYPE in
    monitoring|networking|webapp|security|storage) ;;
    *) error "Invalid project type. Use: monitoring, networking, webapp, security, or storage" ;;
esac

info "Creating AWS project scaffold: $PROJECT_NAME"
info "Project type: $PROJECT_TYPE"
info "AWS region: $AWS_REGION"

# Check if project directory already exists
if [ -d "$PROJECT_NAME" ]; then
    error "Project directory already exists: $PROJECT_NAME"
fi

# Create main project directory
mkdir -p "$PROJECT_NAME"
cd "$PROJECT_NAME"

# Create directory structure
info "Creating directory structure..."
mkdir -p terraform/modules
mkdir -p scripts
mkdir -p docs
mkdir -p tests
mkdir -p .github/workflows

success "Created directory structure"

# Create main Terraform files
info "Creating Terraform configuration..."

cat > terraform/main.tf <<EOF
terraform {
  required_version = ">= 1.5.0"
  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  
  backend "s3" {
    # bucket = "your-terraform-state-bucket"
    # key    = "$PROJECT_NAME/terraform.tfstate"
    # region = "$AWS_REGION"
    # Uncomment and configure for remote state
  }
}

provider "aws" {
  region = var.aws_region
  
  default_tags {
    tags = {
      Project     = "$PROJECT_NAME"
      Environment = var.environment
      ManagedBy   = "Terraform"
      CreatedBy   = "Charles Bucher"
    }
  }
}

# Main infrastructure resources
# TODO: Add your AWS resources here
EOF

cat > terraform/variables.tf <<EOF
variable "aws_region" {
  description = "AWS region for resources"
  type        = string
  default     = "$AWS_REGION"
}

variable "environment" {
  description = "Environment name (dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "project_name" {
  description = "Project name for resource naming"
  type        = string
  default     = "$PROJECT_NAME"
}

# Add project-specific variables below
EOF

cat > terraform/outputs.tf <<'EOF'
# Output important resource information

# Example outputs:
# output "instance_id" {
#   description = "EC2 instance ID"
#   value       = aws_instance.main.id
# }

# output "public_ip" {
#   description = "Public IP address"
#   value       = aws_instance.main.public_ip
# }
EOF

cat > terraform/terraform.tfvars <<EOF
# Terraform variable values
# DO NOT commit sensitive values to git

aws_region   = "$AWS_REGION"
environment  = "dev"
project_name = "$PROJECT_NAME"

# Add your variable values here
EOF

success "Created Terraform configuration files"

# Create README
info "Creating README..."

cat > README.md <<EOF
# $PROJECT_NAME

**Type**: $PROJECT_TYPE | **Region**: $AWS_REGION | **Status**: In Development

## Overview

[Brief description of what this project does and why it exists]

## Architecture

\`\`\`
[Add architecture diagram here - use ASCII or link to image]
\`\`\`

## Features

- Feature 1
- Feature 2
- Feature 3

## Prerequisites

- AWS Account with appropriate IAM permissions
- Terraform >= 1.5.0
- AWS CLI configured
- [Any other requirements]

## Quick Start

### 1. Clone and Setup

\`\`\`bash
git clone https://github.com/charles-bucher/$PROJECT_NAME.git
cd $PROJECT_NAME/terraform
\`\`\`

### 2. Configure Variables

Edit \`terraform.tfvars\` with your specific values:

\`\`\`hcl
aws_region   = "$AWS_REGION"
environment  = "dev"
project_name = "$PROJECT_NAME"
\`\`\`

### 3. Deploy Infrastructure

\`\`\`bash
# Initialize Terraform
terraform init

# Review planned changes
terraform plan

# Apply changes
terraform apply

# When finished, clean up
terraform destroy
\`\`\`

## Project Structure

\`\`\`
$PROJECT_NAME/
├── terraform/
│   ├── main.tf           # Main infrastructure definition
│   ├── variables.tf      # Input variables
│   ├── outputs.tf        # Output values
│   ├── terraform.tfvars  # Variable values (gitignored)
│   └── modules/          # Reusable Terraform modules
├── scripts/              # Automation and helper scripts
├── docs/                 # Additional documentation
├── tests/                # Infrastructure tests
└── README.md             # This file
\`\`\`

## Technical Details

**AWS Services Used:**
- [Service 1]
- [Service 2]
- [Service 3]

**Key Technologies:**
- Terraform (Infrastructure as Code)
- AWS CLI
- [Other tools]

## Cost Estimate

[Provide monthly cost estimate based on usage]

**Example:**
- Service 1: \\\$X/month
- Service 2: \\\$Y/month
- **Total**: ~\\\$Z/month

## Security Considerations

- [ ] IAM roles use least-privilege policies
- [ ] Security groups restrict unnecessary access
- [ ] Encryption enabled for data at rest
- [ ] Encryption enabled for data in transit
- [ ] CloudWatch logging enabled
- [ ] [Add other security measures]

## What I Learned

[Document challenges faced and solutions found]

**Challenges:**
- Challenge 1 and how I solved it
- Challenge 2 and how I solved it

**Key Takeaways:**
- Lesson 1
- Lesson 2

## AWS Certification Alignment

This project aligns with the following AWS certification domains:

- **Solutions Architect Associate**: [Specific domains]
- **SysOps Administrator**: [Specific domains]
- **Developer Associate**: [Specific domains]

## Troubleshooting

**Common Issues:**

1. **Issue**: [Problem description]
   - **Solution**: [How to fix]

2. **Issue**: [Problem description]
   - **Solution**: [How to fix]

## Contributing

Feel free to fork this project and submit pull requests. This is a learning project, so suggestions and improvements are welcome.

## License

MIT License - Feel free to use and modify

## Contact

**Charles Bucher**
- Email: Quietopscb@gmail.com
- LinkedIn: [linkedin.com/in/charles-bucher-26598728](https://www.linkedin.com/in/charles-bucher-26598728)
- GitHub: [github.com/charles-bucher](https://github.com/charles-bucher)

---

*Last Updated: $(date +"%B %Y")*
EOF

success "Created README.md"

# Create .gitignore
info "Creating .gitignore..."

cat > .gitignore <<'EOF'
# Terraform
*.tfstate
*.tfstate.*
.terraform/
.terraform.lock.hcl
terraform.tfvars
*.tfvars.json
crash.log
override.tf
override.tf.json
*_override.tf
*_override.tf.json

# AWS
*.pem
*.key
.aws/

# Environment variables
.env
.env.local

# IDE
.vscode/
.idea/
*.swp
*.swo
*~

# OS
.DS_Store
Thumbs.db

# Logs
*.log

# Backup files
*.backup
*.bak
EOF

success "Created .gitignore"

# Create deployment script
info "Creating deployment scripts..."

cat > scripts/deploy.sh <<'DEPLOY_SCRIPT'
#!/bin/bash
# Deployment script for infrastructure

set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m'

success() { echo -e "${GREEN}✓${NC} $1"; }
info() { echo -e "${CYAN}→${NC} $1"; }
error() { echo -e "${RED}✗${NC} $1"; exit 1; }

ACTION="${1:-plan}"
AUTO_APPROVE="${2:-false}"

info "Deployment Script"
info "Action: $ACTION"

# Check prerequisites
info "Checking prerequisites..."

if ! command -v terraform &> /dev/null; then
    error "Terraform not found. Please install Terraform."
fi

if ! command -v aws &> /dev/null; then
    error "AWS CLI not found. Please install AWS CLI."
fi

# Check AWS credentials
if ! aws sts get-caller-identity &> /dev/null; then
    error "AWS credentials not configured. Run 'aws configure'"
fi

success "AWS credentials configured"

# Navigate to terraform directory
cd "$(dirname "$0")/../terraform"

# Initialize Terraform if needed
if [ ! -d ".terraform" ]; then
    info "Initializing Terraform..."
    terraform init
fi

# Execute action
info "Executing terraform $ACTION..."

case $ACTION in
    plan)
        terraform plan
        ;;
    apply)
        if [ "$AUTO_APPROVE" = "true" ]; then
            terraform apply -auto-approve
        else
            terraform apply
        fi
        ;;
    destroy)
        if [ "$AUTO_APPROVE" = "true" ]; then
            terraform destroy -auto-approve
        else
            terraform destroy
        fi
        ;;
    *)
        error "Invalid action. Use: plan, apply, or destroy"
        ;;
esac

success "Complete!"
DEPLOY_SCRIPT

chmod +x scripts/deploy.sh
success "Created deployment script (executable)"

# Create cost estimation script
cat > scripts/estimate-cost.sh <<'COST_SCRIPT'
#!/bin/bash
# Cost estimation script

CYAN='\033[0;36m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
GRAY='\033[0;90m'
NC='\033[0m'

echo -e "${CYAN}→${NC} Estimating AWS costs"
echo ""

# TODO: Add cost calculations based on your resources
# Example:
# EC2_COST=$(echo "0.0116 * 730" | bc)  # t3.micro monthly
# S3_COST=$(echo "0.023 * 10" | bc)     # 10GB storage
# TOTAL_COST=$(echo "$EC2_COST + $S3_COST" | bc)

echo -e "${YELLOW}Monthly Cost Estimate:${NC}"
echo "  EC2 Instances:    \$X.XX"
echo "  S3 Storage:       \$X.XX"
echo "  Data Transfer:    \$X.XX"
echo "  CloudWatch:       \$X.XX"
echo "  --------------------------"
echo -e "  ${GREEN}Total:            ~\$X.XX/month${NC}"
echo ""
echo -e "${GRAY}Note: Actual costs may vary based on usage patterns${NC}"
COST_SCRIPT

chmod +x scripts/estimate-cost.sh
success "Created cost estimation script (executable)"

# Create GitHub Actions workflow
info "Creating GitHub Actions workflow..."

cat > .github/workflows/terraform.yml <<'EOF'
name: Terraform Validation

on:
  push:
    branches: [ main, develop ]
  pull_request:
    branches: [ main ]

jobs:
  terraform:
    name: Terraform Validation
    runs-on: ubuntu-latest
    
    steps:
    - name: Checkout code
      uses: actions/checkout@v3
    
    - name: Setup Terraform
      uses: hashicorp/setup-terraform@v2
      with:
        terraform_version: 1.5.0
    
    - name: Terraform Format Check
      working-directory: ./terraform
      run: terraform fmt -check
    
    - name: Terraform Init
      working-directory: ./terraform
      run: terraform init -backend=false
    
    - name: Terraform Validate
      working-directory: ./terraform
      run: terraform validate
EOF

success "Created GitHub Actions workflow"

# Create documentation index
info "Creating documentation..."

cat > docs/index.md <<EOF
# $PROJECT_NAME Documentation

## Table of Contents

1. [Architecture Overview](architecture.md)
2. [Deployment Guide](deployment.md)
3. [Troubleshooting](troubleshooting.md)
4. [Cost Analysis](cost-analysis.md)
5. [Security Best Practices](security.md)

## Quick Links

- [Main README](../README.md)
- [Terraform Configuration](../terraform/)
- [Deployment Scripts](../scripts/)
EOF

success "Created documentation index"

# Initialize git repository
info "Initializing git repository..."

git init > /dev/null 2>&1
git add . > /dev/null 2>&1
git commit -m "Initial project scaffold for $PROJECT_NAME

Created complete project structure with:
- Terraform configuration (main.tf, variables.tf, outputs.tf)
- Documentation templates
- Deployment automation scripts
- GitHub Actions workflow for CI/CD
- Cost estimation tools
- Security best practices

Project type: $PROJECT_TYPE
AWS Region: $AWS_REGION
" > /dev/null 2>&1

success "Initialized git repository with initial commit"

# Summary
echo ""
echo -e "${GREEN}================================================${NC}"
echo -e "${GREEN}  Project scaffold created successfully!${NC}"
echo -e "${GREEN}================================================${NC}"
echo ""
echo -e "${CYAN}Project:${NC} $PROJECT_NAME"
echo -e "${CYAN}Location:${NC} $(pwd)"
echo ""
echo -e "${YELLOW}Next Steps:${NC}"
echo "  1. cd $PROJECT_NAME"
echo "  2. Edit terraform/main.tf to add your AWS resources"
echo "  3. Update README.md with project-specific details"
echo "  4. Run: ./scripts/deploy.sh plan"
echo ""
echo -e "${YELLOW}Quick Commands:${NC}"
echo "  Deploy:   ./scripts/deploy.sh apply"
echo "  Destroy:  ./scripts/deploy.sh destroy"
echo "  Costs:    ./scripts/estimate-cost.sh"
echo ""
echo -e "${YELLOW}Don't forget to:${NC}"
echo "  - Configure AWS credentials (aws configure)"
echo "  - Update terraform.tfvars with your values"
echo "  - Review and customize .gitignore"
echo ""
echo -e "${GREEN}Happy building! 🚀${NC}"
