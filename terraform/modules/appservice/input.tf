# Resource Group/Location
variable "location" {
    type = string
    default = "South Central US"
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
