variable aws_region {
    default = "us-east-1"
}
variable "account_id" {
    default = "538510008501"
}

variable "assume_role_name" {
    default = "mf-tf-role"
}

variable "tfstate_bucket" {
    default = "mf-tf-bucket"
}