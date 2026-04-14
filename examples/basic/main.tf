###############################################################################
# examples/basic/main.tf
#
# Ejemplo mínimo de uso del módulo S3.
# Crea un bucket privado, con versionado y cifrado AES-256 activados.
###############################################################################

module "s3_basic" {
  source = "../../"

  bucket_name = "s3-tf-demo"

  versioning_enabled = true

  tags = {
    Environment = "dev"
    Project     = "ejemplo-basico"
    ManagedBy   = "Terraform"
  }
}