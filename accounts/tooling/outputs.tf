output "s3_bucket_name" {
  description = "Nombre del S3 para el backend"
  value       = aws_s3_bucket.terraform_state.id
}

output "region" {
  description = "Region de despliegue"
  value       = var.aws_region
}
