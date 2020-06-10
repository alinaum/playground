
variable "blocks" {
  type = list(object({
    device_name = string
    volume_size = string
    volume_type = string
  }))
  description = "EBS block list"
}

variable "name" {
  default = "doidera"
  type = string  
}

