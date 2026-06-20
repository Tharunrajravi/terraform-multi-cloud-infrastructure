output "state_bucket_name" {
  description = "Terraform state bucket"

  value = aws_s3_bucket.terraform_state.bucket
}

output "lock_table_name" {
  description = "Terraform lock table"

  value = aws_dynamodb_table.terraform_lock.name
}
