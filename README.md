# FastAPI AWS Lambda Boilerplate

A boilerplate including setup for Fast API and AWS Lambda together with CI/CD included and using Terraform to create AWS resources.

## Stack

- **Application core**: Python + FastAPI
- **Package manager**: Poetry
- **Testing**: Pytest + Moto
- **Infrastructure management**: Terraform
- **Cloud services**: AWS Lambda + DynamoDB + S3

## Instructions

- Look for app-name and replace all occurrences with your project name
- Create virtualenv inside server/
- Install poetry directly
- Use poetry install to sync dependencies
- Init terraform inside infra/
- Create and select a new workspace
- Apply all resources existent adjusting for the ones that are not needed
