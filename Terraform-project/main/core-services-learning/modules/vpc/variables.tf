
# variable "vpcs" {
#   default = {
#     vpc1 = "172.16.0.0/16",   
#     vpc2 = "10.12.0.0/16"
#   }
# }

variable "vpc_configuration" {
  type = any
  description = "this is configuration for vpc"
  
}
