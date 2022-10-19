vpc_configuration = {
    "cidr_block" = "172.16.0.0/16"
default = {
    "vpc1" = "172.16.0.0/16",   
    "vpc2" = "10.12.0.0/16"
  }
}

ec2_configuration = {
    "key_name" = "demo-ap-key"
    "instance_type" = "t3.micro"
}

s3_configuration = {
     "qwerty" =  {
      "Name" = "apple_bucket"
      "Environment" = "testing"
      "region" = "ap-south-1"
      "managed" = "docker"
    }
    
}
iam_configuration = {
    "Name" = "development-instance-role"
}