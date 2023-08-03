# Resource Group
variable resource_group {
    type    = string
    default = "Azuredevops"
}
variable location {
    type    = string
    default = "East US"
}
# Network
variable virtual_network_name {
    type    = string
    default = "production"
}
variable address_space {
    type    = list(string)
    default = ["192.0.0.0/16"]
}
variable "application_type" {
    type    = string
    default = "MyApplication"
}
variable "resource_type" {
    type    = string
    default = "Network"
}
variable "address_prefix_test" {
    type    = list(string)
    default = ["192.0.0.0/24"]
}

