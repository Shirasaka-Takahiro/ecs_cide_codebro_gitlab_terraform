##Network ids
output "vpc_id" {
  value = module.network.vpc_id
}

output "internet_gateway_id" {
  value = module.network.internet_gateway_id
}

output "public_subnet_ids" {
  value = module.network.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.network.private_subnet_ids
}


##Security Group ids
output "internal_sg_id" {
  value = module.internal_sg.security_group_id
}

output "operation_sg_1_id" {
  value = module.operation_sg_1.security_group_id
}

output "ec2_http_sg_id" {
  value = module.ec2_http_sg.security_group_id
}

output "e2c_https_sg_id" {
  value = module.ec2_https_sg.security_group_id
}

output "alb_http_sg_id" {
  value = module.alb_http_sg.security_group_id
}

output "alb_https_sg_id" {
  value = module.alb_https_sg.security_group_id
}

##Instance ids
output "instance_ids" {
  value = module.ec2.instance_ids
}

##EC2 Public IP
output "public_ip" {
  value = module.ec2.public_ip
}