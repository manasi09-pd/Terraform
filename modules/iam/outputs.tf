output "iam_user_name" {
  value = data.aws_iam_user.existing_user.user_name
}

output "iam_user_arn" {
  value = data.aws_iam_user.existing_user.arn
}

