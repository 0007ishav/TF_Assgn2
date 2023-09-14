resource "aws_instance" "ins" {
  for_each = toset(var.me)
  ami = var.ami_value
  instance_type = var.ins_type

 tags = {
    Name    = each.value
    Owner   = var.own
    Purpose = var.purp
  }

  volume_tags = {
    Name    = each.key
    Owner   = var.own
    Purpose = var.purp
  }
}

resource "aws_iam_user" "ishav_iam" {
  count = length(var.me)
  name = var.me[count.index]

  tags = {
    Name    = var.me[count.index]
    Owner   = var.own
    Purpose = var.purp
  }
}