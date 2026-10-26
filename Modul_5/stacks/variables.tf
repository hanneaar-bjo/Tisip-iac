

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