variable "general_config" {
  type = map(any)
}
variable "repository_role" {}
variable "provider_endpoint" {}
variable "vpc_id" {}
variable "public_subnet_ids" {}
variable "operation_sg_1_id" {}
variable "ec2_http_sg_id" {}
variable "ec2_https_sg_id" {}
