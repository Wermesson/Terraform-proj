variable "s3_bucket" {
  description = "Define o nome da bucket no módulo s3"
  default     = "terraform-wf-proj"
}

variable "aws_key_pub" {
  type = string
}

variable "azure_key_pub" {
  type = string
}

variable "ami" {
  default = "ami-080e1f13689e07408"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "az_location" {
  default = "East US"
}

variable "force_destroy" {
  type    = bool
  default = false
}

variable "shared_key1" {
  type = string
}

variable "shared_key2" {
  type = string
}

variable "az_gate_ad1" {
  type = string
}

variable "az_gate_ad2" {
  type = string
}