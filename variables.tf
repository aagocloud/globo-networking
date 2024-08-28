variable "region" {
  type        = string
  description = "default region for aws resources"
  default     = "us-east-1"
}

variable "prefix" {
  type        = string
  description = "value of the VPC"
  default     = "globo-dev"
}

variable "environment" {
  type        = string
  description = "envrironment details"
  default     = "development"
}

variable "cide_block" {
  type        = string
  description = "The CIDR block for the VPC"
  default     = "10.42.0.0/16"

}

variable "public_subnets" {
  type        = map(string)
  description = "List of public subnets inside VPC"
  default = {
    public-1 = "10.42.10.0/24"
    public-2 = "10.42.11.0/24"
  }
}

variable "billing_code" {
  type        = string
  description = "Billing code for resources"
}