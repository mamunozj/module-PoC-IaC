###############################################################################
# AWS S3 Bucket Module - outputs.tf
###############################################################################

output "bucket_id" {
  description = "Nombre del bucket (igual al ID en AWS)."
  value       = aws_s3_bucket.this.id
}

output "bucket_arn" {
  description = "ARN del bucket S3."
  value       = aws_s3_bucket.this.arn
}

output "bucket_domain_name" {
  description = "Dominio del bucket (bucket.s3.amazonaws.com)."
  value       = aws_s3_bucket.this.bucket_domain_name
}

output "bucket_regional_domain_name" {
  description = "Dominio regional del bucket."
  value       = aws_s3_bucket.this.bucket_regional_domain_name
}

output "bucket_region" {
  description = "Región AWS donde está el bucket."
  value       = aws_s3_bucket.this.region
}