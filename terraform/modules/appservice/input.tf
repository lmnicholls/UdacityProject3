# Resource Group/Location
variable "location" {
    type = string
    default = "East US"
}

variable "application_type" {
    type = string
    default = "Project3"
}
variable "resource_type" {
    type = string
    default = "AppService"
}
variable "resource_group" {
    type = string
    default = "Azuredevops"
}
