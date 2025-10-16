#resource "aws_iam_user" "test_user" {
  #name = var.iam_user
  #tags = {
    #CreatedBy = "terraform"
  #}
#}

data "aws_iam_user" "existing_user" {
  user_name = var.iam_user
}

#resource "aws_iam_access_key" "test_access_key" {
  #user = aws_iam_user.test_user.name
#}
