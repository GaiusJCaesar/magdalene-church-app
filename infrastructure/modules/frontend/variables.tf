variable "env" {
  description = "Name of environment"
}

variable "region" {
  description = "Name of the region of the resources"
  default     = "eu-west-2"
}

variable "s3_name" {
  description = "Name of S3 bucket"
}