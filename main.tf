provider "aws" {
  region = "${var.aws_region}"
  assume_role { 
      role_arn = "arn:aws:iam::${var.account_id}:role/${var.assume_role_name}"
  }
}

terraform {
    backend "s3" {
        bucket = "mf-tf-bucket"
        key = "state/terraform.tfstate"
        region = "us-east-1"
    }
}
