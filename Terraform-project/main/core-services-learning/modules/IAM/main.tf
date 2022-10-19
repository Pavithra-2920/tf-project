resource "aws_iam_user" "IAM-aps1-users" {
  count = length(var.user_names)
  name  = var.user_names[count.index]
}

resource "aws_iam_role" "IAM-aps1-role" {
  name = lookup(var.iam_configuration, "Name")
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid = ""
        Principal = {
          Service = "s3.amazonaws.com"
        }
      },
    ]
  })
}




resource "aws_iam_policy" "IAM-aps1-policy" {
  name = "s3_policy"
  #role   = "aws_iam_role.ec2_iam_role"
  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" = [{
      "Action"   = "s3:*",
      "Effect"   = "Allow",
      "Resource" = "*"
    }],
  })
}

resource "aws_iam_role_policy_attachment" "s3-role-attach" {
  role       = aws_iam_role.IAM-aps1-role.name
  policy_arn = aws_iam_policy.IAM-aps1-policy.arn
}

