variable "user_names" {
  description = "IAM usernames"
  type        = list(string)
  default     = ["Kubernetes", "docker", "hashicorp"]
}
variable "iam_configuration" {
  type = any
  description = "this is configuration for iam"
  
}
