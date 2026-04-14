###############################################################################
# examples/basic/outputs.tf
###############################################################################

output "bucket_id" {
  description = "Nombre del bucket creado."
  value       = module.s3_basic.bucket_id
}

output "bucket_arn" {
  description = "ARN del bucket creado."
  value       = module.s3_basic.bucket_arn
}

output "bucket_regional_domain_name" {
  description = "Dominio regional del bucket."
  value       = module.s3_basic.bucket_regional_domain_name
}
