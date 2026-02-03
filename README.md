# Estructura de carpetas

```bash
Terra-LandingZone-Infra/
├── .gitignore
├── .github/
│   └── workflows/
│       └── deploy.yml
├── accounts/
│   ├── tooling/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   │   ├── backend.tf
│   │   └── oidc.tf
│   ├── connectivity/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   │   └── backend.tf
│   └── production/
│       ├── main.tf
│       ├── variables.tf
│       ├── outputs.tf
│       └── backend.tf
├── modules/
│   ├── networking/
│   │   ├── vpc/
│   │   ├── transit-gateway/
│   │   ├── subnets/
│   │   └── attachments/
│   ├── compute/
│   │   ├── ec2/
│   │   ├── asg/
│   │   └── alb/
│   ├── database/
│   │   ├── rds/
│   │   └── documentdb/
│   └── storage/
│   │   ├── s3/
│   │   └── cdn/
└── provider.tf
```
