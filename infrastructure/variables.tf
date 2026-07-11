# Define config variables
variable "label_prefix" {
  type        = string
  description = "Your college username. This will form the beginning of various resource names."
}

variable "region" {
  type        = string
  default     = "canadacentral"
  description = "The Azure region where the resources will be created."
}