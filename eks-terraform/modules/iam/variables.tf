variable "name" {
  description = "The name of the IAM role."
  type        = string
}

variable "assume_role_policy" {
  description = "The assume role policy document."
  type        = any
}

variable "policy_arns" {
  description = "A list of IAM policy ARNs to attach to the role."
  type        = list(string)
}