# Resource Group/Location
variable "location" {
    type = string
    default = "East US"
}
variable "resource_group" {
    type = string
    default = "Azuredevops"
}

variable "application_type" {
    type = string
    default = "MyApplication"
}
variable "resource_type" {
    type = string
    default = "PublicIp"
}
