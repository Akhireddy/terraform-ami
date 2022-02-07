data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "base-with-ansible"
  owners      = ["self"]
}

data "aws_secretsmanager_secret" "common" {
  name = "common/ssh"
}