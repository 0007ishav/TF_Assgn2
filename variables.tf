variable "me" {
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

variable "own" {
  type        = string
  description = "Owner of the instance"
}

variable "purp" {
  type        = string
  description = "Purpose of creating an instance"
}

