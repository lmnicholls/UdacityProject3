# Resource Group/Location
variable "location" {
    type = string
    default = "West Europe"
}

variable "application_type" {
    type = string
    default = "MyApplication"
}
variable "resource_type" {
    type = string
    default = "AppService"
}
variable "resource_group" {
    type = string
    default = "Azuredevops"
}
