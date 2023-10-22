resource "aws_instance" "myInstance" {
  for_each = toset(var.Name)
  Name = each.key
  ami = var.ami_value
  instance_type = var.ins_type

 tags = var.tags

  volume_tags = var.volume_tags
}

resource "aws_iam_user" "ishav_iam" {
  count = length(var.Name)
  name = var.Name[count.index]

  tags = var.tags
}
