variable "name" {
    type = string
    default = "mini-project"
}

variable "arn" {
  description = "List of teammate AWS account ARNs allowed to assume this role"
  type        = list(string)
  default     = [
    "arn:aws:iam::505789305843:role/RoleName", # teammate 1
    "arn:aws:iam::123456789012:role/RoleName", # teammate 2
    "arn:aws:iam::987654321098:role/RoleName"  # teammate 3
  ]
}