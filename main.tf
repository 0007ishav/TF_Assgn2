resource "aws_instance" "myInstance" {
  for_each = toset(var.Name)
  
  ami = var.ami_value
  instance_type = var.ins_type

 tags = merge(
      var.tags,
      {
        Name = each.key
      }
)
  volume_tags = merge(
      var.volume_tags,
      {
        Name = each.key
      }
)
}
resource "aws_iam_user" "ishav_iam" {
  count = length(var.Name)
  name = var.Name[count.index]

  tags = var.tags
}
