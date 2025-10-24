resource "aws_iam_role" "admin_access_role" {

  name = "admin_access_role"
  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
           AWS = "505789305843"
        },
        "Condition": {}
      }
    ]
  })

  tags = {
    Name = "${var.name}-iam_role"
    tag-key = "tag-value"
  }
}