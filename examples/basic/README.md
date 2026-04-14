# Ejemplo básico — Módulo S3

Crea un bucket S3 **privado**, con **versionado** y **cifrado AES-256** activados usando la configuración mínima del módulo.

## Recursos creados

| Recurso | Descripción |
|---|---|
| `aws_s3_bucket` | Bucket privado con sufijo aleatorio |
| `aws_s3_bucket_versioning` | Versionado habilitado |
| `aws_s3_bucket_server_side_encryption_configuration` | Cifrado SSE-AES256 |
| `aws_s3_bucket_public_access_block` | Todo el acceso público bloqueado |

## Uso

```bash
# 1. Inicializar providers y módulo
terraform init

# 2. Revisar el plan
terraform plan

# 3. Aplicar
terraform apply
```

## Outputs

| Nombre | Descripción |
|---|---|
| `bucket_id` | Nombre del bucket |
| `bucket_arn` | ARN del bucket |
| `bucket_regional_domain_name` | Dominio regional |

## Requisitos

| Herramienta | Versión mínima |
|---|---|
| Terraform | `>= 1.3.0` |
| AWS Provider | `>= 5.0` |
| Credenciales AWS | Configuradas vía `AWS_PROFILE` o variables de entorno |
