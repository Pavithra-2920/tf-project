

resource "aws_instance" "prod-aps1-ec2-lookups" {   
    instance_type = lookup(var.ec2_configuration, "instance_type")
    ami = "${lookup(var.aws_amis , var.aws_region)}"
    key_name = lookup(var.ec2_configuration, "key_name")
    tags = lookup(var.s3_configuration, "qwerty")
 }

data "aws_secretsmanager_secret_version" "creds" {
  secret_id = "APS1-demo-credentials"
}

locals {
   APS1-demo-credentials= jsondecode(
    data.aws_secretsmanager_secret_version.creds.secret_string
  )
}

resource "aws_instance" "dev-aps1-ec2" {
    ami           = "${lookup(var.aws_amis , var.aws_region)}"
    instance_type =  var.instance_type
    associate_public_ip_address = var.enable_public_ip
    key_name = local.APS1-demo-credentials.keypair
    tags = var.project_environment
}



