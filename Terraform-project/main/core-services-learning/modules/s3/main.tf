resource "aws_s3_bucket" "S3-aps1-bucket1" {

    bucket = "cosmic122-clone"
    acl = "private"
    force_destroy = "true"
    tags = lookup(var.s3_configuration, "qwerty")
    depends_on = [
      aws_s3_bucket.S3-aps1-dependsonbucket1
    ]
}
output "bucket_id" {
    value = aws_s3_bucket.S3-aps1-bucket1.id
  
}

resource "aws_s3_bucket" "S3-aps1-dependsonbucket1" {
    bucket = "cosmic123-clone"
    tags = lookup(var.s3_configuration, "qwerty")
    
}


# resource "aws_instance" "depends-on-ec2" {
  
#   ami           = "ami-06489866022e12a14"
#   instance_type = lookup(var.s3_configuration, "instance_type_tf")
#   tags = {
#     Name = "demo-bucket-ec2"
#   }
# }
