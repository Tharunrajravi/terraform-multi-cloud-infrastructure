# Backend Infrastructure

This directory contains a standalone Terraform configuration used to provision the remote backend resources required for Terraform state management.

## Resources Created

* Amazon S3 Bucket

  * Stores the Terraform state file (`terraform.tfstate`).
  * Versioning is enabled to maintain the history of state changes.
  * Server-side encryption is enabled.
  * Public access is blocked.

* Amazon DynamoDB Table

  * Provides state locking to prevent multiple users from modifying the Terraform state simultaneously.
  * Uses `PAY_PER_REQUEST` billing mode.

## Why is this separate?

Terraform must configure its backend before it can create or manage the main infrastructure.

Because of this, the backend resources (S3 bucket and DynamoDB table) are provisioned separately from the primary infrastructure.

The main Terraform project contains a commented `backend.tf` file that demonstrates how these resources would be referenced in a production environment.

## Usage

1. Navigate to the backend directory.

```bash
cd backend
```

2. Initialize Terraform.

```bash
terraform init
```

3. Review the execution plan.

```bash
terraform plan
```

4. Provision the backend resources.

```bash
terraform apply
```

After the S3 bucket and DynamoDB table are created, update the root `backend.tf` file with the generated resource names and run:

```bash
terraform init -reconfigure
```

This migrates the Terraform state from the local backend to the remote S3 backend and enables state locking using DynamoDB.
