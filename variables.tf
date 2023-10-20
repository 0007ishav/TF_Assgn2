variable "Name" {
  type        = list(string)
  description = "Name of the instance"
}

variable "ami_value" {
  type        = string
  description = "Value of ami"
}

variable "ins_type" {
  type        = string
  description = "Type of the instnaces"
}

variable "tags" {
  type = map(any)
  description = "Give tags"
}

variable "volume_tags" {
  type = map(any)
  description = "Give volume_tags"
}