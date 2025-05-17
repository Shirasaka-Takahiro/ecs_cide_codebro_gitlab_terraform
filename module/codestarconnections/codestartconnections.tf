##Codestar Connections Connection
resource "aws_codestarconnections_connection" "default" {
  name     = "${var.general_config["project"]}-${var.general_config["env"]}-${var.repository_role}-connection"
  host_arn = aws_codestarconnections_host.default.arn
}

resource "aws_codestarconnections_host" "default" {
  name              = "${var.general_config["project"]}-${var.general_config["env"]}-${var.repository_role}-connection-host"
  provider_endpoint = var.provider_endpoint
  provider_type     = "GitLabSelfManaged"

  vpc_configuration {
    vpc_id     = var.vpc_id
    subnet_ids = var.public_subnet_ids
    security_group_ids = [
      var.operation_sg_1_id,
      var.ec2_http_sg_id,
      var.ec2_https_sg_id
    ]
  }
}