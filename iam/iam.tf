resource "aws_iam_user" "bob" {
  name = "bob"
  tags = {
    Teams = "DevOps"
  }
}

resource "aws_iam_group" "sysusers" {
  name = "sysusers"
  path = "/users/"
}

resource "aws_iam_user_group_membership" "example1" {
  user = aws_iam_user.bob.name

  groups = [
    aws_iam_group.sysusers.name,

  ]
}
output "user" {
  value = "bob"
}
output "groups" {
  value = "sysusers"
}
