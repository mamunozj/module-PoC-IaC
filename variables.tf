###############################################################################
# AWS S3 Bucket Module - variables.tf
###############################################################################

variable "bucket_name" {
  description = "Nombre único global del bucket S3."
  type        = string
}

variable "force_destroy" {
  description = "Si es true, elimina todos los objetos al destruir el bucket."
  type        = bool
  default     = false
}

variable "object_ownership" {
  description = "Control de propiedad de objetos. BucketOwnerEnforced deshabilita las ACLs."
  type        = string
  default     = "BucketOwnerEnforced"
}

# --- Public Access Block ---
variable "block_public_acls" {
  type    = bool
  default = true
}
variable "block_public_policy" {
  type    = bool
  default = true
}
variable "ignore_public_acls" {
  type    = bool
  default = true
}
variable "restrict_public_buckets" {
  type    = bool
  default = true
}

# --- Versioning ---
variable "versioning_enabled" {
  description = "Habilita el versionado del bucket."
  type        = bool
  default     = false
}

# --- Encryption ---
variable "kms_key_arn" {
  description = "ARN de la clave KMS para cifrado SSE-KMS. Si es null, usa AES-256."
  type        = string
  default     = null
}

# --- Lifecycle ---
variable "lifecycle_rules" {
  description = <<-EOT
    Lista de reglas de ciclo de vida. Ejemplo:
    [
      {
        id      = "archive-old-logs"
        enabled = true
        prefix  = "logs/"
        transitions = [
          { days = 30,  storage_class = "STANDARD_IA" },
          { days = 90,  storage_class = "GLACIER" }
        ]
        expiration_days                    = 365
        noncurrent_version_expiration_days = 90
      }
    ]
  EOT
  type        = any
  default     = []
}

# --- Logging ---
variable "logging_target_bucket" {
  description = "Bucket de destino para los access logs. null = deshabilitado."
  type        = string
  default     = null
}

variable "logging_target_prefix" {
  description = "Prefijo de los logs de acceso. Por defecto '<bucket_name>/'."
  type        = string
  default     = null
}

# --- Bucket Policy ---
variable "bucket_policy_json" {
  description = "Política IAM del bucket en formato JSON. null = sin política."
  type        = string
  default     = null
}

# --- CORS ---
variable "cors_rules" {
  description = <<-EOT
    Lista de reglas CORS. Ejemplo:
    [
      {
        allowed_methods = ["GET", "HEAD"]
        allowed_origins = ["https://example.com"]
        allowed_headers = ["*"]
        max_age_seconds = 3000
      }
    ]
  EOT
  type        = any
  default     = []
}

# --- Tags ---
variable "tags" {
  description = "Mapa de etiquetas aplicadas al bucket."
  type        = map(string)
  default     = {}
}