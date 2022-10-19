variable "aws_region" {
  default="ap-south-1"
}

variable "key_name_tf" {
  default = "ap-south1-key"
}


variable "app_name" {
  default = "demo-instance"
}



variable "instance_type" {
  type = string
  description = "instance type t2.micro"
  default= "t2.micro"
}


variable "enable_public_ip" {
  description = "enable public ip address"
  type = bool
  default = true
}

variable "project_environment" {
  description = "project name and environment"
  type = map(string) 
  default = {
    "Name" = "Apple",
    "environment" ="testing"
  }
}


variable "ec2_configuration" {
  type = any
  description = "this is configuration for ec2 in tfvars"
  
  }

variable "s3_configuration" {
  type = any
  description = "this is configuration for s3 in tfvars"
  
  }

variable "aws_amis" {
  default ={
    "us-east-2" = " ami-0568773882d492fc8"
    "ap-south-1" = "ami-06489866022e12a14"
  }
  
}