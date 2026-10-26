variable "project" {
type = string
}
variable "location" {
type = string
}
variable "resource_group_name" {
type = string
}
variable "tags" {
description = "Tags skal settes på ressurser"
type = map(string)
default = {}
}
variable "name_prefix" {
  type        = string
  description = "Navneprefix for nettverksressurser."
  default     = "demo"
}

variable "address_space" {
description = "CIDR-blokken som skal brukes for det virtuelle nettverket"
type = list(string)
default = ["10.0.0.0/16"]
}
variable "subnet_address_project" {
description ="CIDR-blokken som skal brukes for subnettet"
type = list(string)
default = ["10.0.1.0/24"]
}


