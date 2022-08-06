variable "prefix" {
  description = "The prefix which should be used for all resources in this example"
}

variable "location" {
  description = "The Azure Region in which all resources in this example should be created."
}

variable "username" {
  description = "The administration username"
}

variable "password" {
  description = "The administration password."

}
variable "tags" {
  description = "The tags for the resources"
}

variable "number" {
  description = "The number of the virtual machines"
}
