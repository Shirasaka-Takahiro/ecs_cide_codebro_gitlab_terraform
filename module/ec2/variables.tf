variable "general_config" {
  type = map(any)
}
variable "ami" {}
variable "ec2_count" {}
variable "public_subnet_ids" {}
variable "operation_sg_1_id" {}
variable "ec2_http_sg_id" {}
variable "ec2_https_sg_id" {}
variable "instance_type" {}
variable "volume_type" {}
variable "volume_size" {}
variable "key_name" {}
variable "public_key_path" {}