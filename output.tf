output "instance_public_ips" {
  value = [for instance in aws_instance.ins : instance.public_ip]
}


output "printIAM" {
  value = [for user in aws_iam_user.ishav_iam: user.arn]
}
