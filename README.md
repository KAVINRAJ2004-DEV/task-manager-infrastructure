# Task Manager Infrastructure

Infrastructure repository for the Task Manager DevOps project.

## Folders

- `terraform/` - AWS infrastructure as code. We will expand this during the Terraform stage.
- `kubernetes/` - Kubernetes deployment/service manifests.

## Important

The Kubernetes files currently use local image names and a simple MySQL deployment for learning. During the CI/CD stage, we will replace these with a proper container registry workflow, secrets, persistent storage, and production-style configuration.

Do not run `terraform apply` yet. We will learn Terraform first and build the AWS infrastructure step by step.
