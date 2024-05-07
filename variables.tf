variable "network_name" {
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
