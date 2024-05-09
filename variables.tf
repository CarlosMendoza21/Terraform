variable "vpc_name" {
    type = string
    description = "Nombre de la red"
    sensitive = true
}

variable "instance_name" {
  type = string
  description = "Nombre de la Instacia"
  default = "nombre predeterminado"
}

variable "instance_type" {
  type = string
  description = "value"
  default = "t2.nano"
}

variable "subnet_name" {
  type = string
  description = "Nombre de la Subnet"
  default = "nombre predeterminado"
}

