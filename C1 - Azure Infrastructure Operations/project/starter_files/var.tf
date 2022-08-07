variable "prefix" {
  description = "The prefix which should be used for all resources in this example"
  default = "project"
}

variable "location" {
  description = "The Azure Region in which all resources in this example should be created."
  default = "West Europe"
}

variable "username" {
  description = "The administration username"
  default = "testadmin"
}

variable "password" {
  description = "The administration password."
  default =  "Password1234!"

}
variable "tags" {
  description = "The tags for the resources"
  default = "environment"
}

variable "number" {
  description = "The number of the virtual machines"
  default = 2
}
