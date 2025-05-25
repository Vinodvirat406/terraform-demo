variable "instance_type" {
  description = "AWS instance type"
  type        = string
}

variable "key_name" {
  description = "AWS key pair name"
  type        = string
}

variable "instance_count" {
  description = "Number intances to launch"
  type        = number
}