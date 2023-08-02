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
    default = "NetworkSecurityGroup"
}
variable "resource_group" {
    type = string
    default = "Azuredevops"
}
variable "subnet_id" {
    type = string
    default = "Subnet"
}
variable "address_prefix_test" {
    type = string
    default = "*"
}
