# Estructura de carpetas

```bash
Terra-LandingZone-Infra/
├── .gitignore
├── .github/
│   └── workflows/
│       └── deploy.yml
├── diagrams/
│   ├── arquitectura.drawio
│   └── arquitectura.png
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
└── modules/
    ├── networking/
    │   ├── vpc/
    │   │   ├── main.tf
    │   │   ├── outputs.tf
    │   │   └── variables.tf
    │   └── transit-gateway/
    │       ├── main.tf
    │       ├── outputs.tf
    │       └── variables.tf
    ├── compute/
    │   ├── ec2/
    │   │   ├── main.tf
    │   │   ├── outputs.tf
    │   │   └── variables.tf
    │   ├── asg/
    │   │   ├── main.tf
    │   │   ├── outputs.tf
    │   │   └── variables.tf
    │   └── alb/
    │       ├── main.tf
    │       ├── outputs.tf
    │       └── variables.tf
    ├── database/
    │   ├── rds/
    │   │   ├── main.tf
    │   │   ├── outputs.tf
    │   │   └── variables.tf
    │   └── documentdb/
    │       ├── main.tf
    │       ├── outputs.tf
    │       └── variables.tf
    └── storage/
        ├── s3/
        │   ├── main.tf
        │   ├── outputs.tf
        │   └── variables.tf
        └── cdn/
            ├── main.tf
            ├── outputs.tf
            └── variables.tf
```
