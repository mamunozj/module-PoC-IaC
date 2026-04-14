###############################################################################
# examples/basic/providers.tf
###############################################################################

provider "aws" {
  region = "eu-west-1"

  default_tags {
    tags = {
      ManagedBy = "Terraform"
      Example   = "basic"
    }
  }
}
