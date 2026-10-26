variable "project" {
  description = "Prosjektnavn for dette miljøet."
  type        = string
}

variable "location" {
  description = "Azure-regionen ressursene skal opprettes i."
  type        = string
}

variable "name_prefix" {
  description = "Prefiks for ressursnavn."
  type        = string
  default     = "hab40"
}