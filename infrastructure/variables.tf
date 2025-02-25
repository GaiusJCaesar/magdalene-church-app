variable "region" {
  description = "Name of the region of the resources"
  default     = "eu-west-2"
}

variable "name" {
  description = "Name of project"
}

variable "runtime" {
  description = "Run time of lambdas"
}

variable "state_bucket" {
  description = "Name of the state bucket"
  default = "my-aws-state-bucket"
}