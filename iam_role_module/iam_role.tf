resource "aws_iam_role" "admin_access_role" {
  name = "admin_access_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = "sts:AssumeRole"
        Principal = {
          AWS = var.arn
        }
      }
    ]
  })

  tags = {
    Name = "${var.name}-iam_role"
  }
}

resource "aws_iam_role_policy_attachment" "admin_access_attach" {
  role       = aws_iam_role.admin_access_role.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}