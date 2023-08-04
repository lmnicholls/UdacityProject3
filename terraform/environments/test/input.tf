# Azure GUIDS
variable "subscription_id" {
    type = string
    default = "d63f8116-7a20-4117-80f3-6b57296b37a5"
}
variable "client_id" {
    type = string
    default = "c1bd8570-9331-481b-87db-7b81aee93cfe"
}
variable "client_secret" {
    type = string
    default = "Pbi8Q~foK7BAgh6SVRfhXl3pcEIkYOBhR~XiVabY"
}
variable "tenant_id" {
    type = string
    default = "f958e84a-92b8-439f-a62d-4f45996b6d07"
}

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
    default = "ResourceGroup"
}

# Network
variable virtual_network_name {
    type = string
    default = "VirtualNetwork"
}
variable address_prefix_test {
    type = list(string)
    default = ["10.5.1.0/24"]
}
variable address_space {
    type = list(string)
    default = ["10.5.0.0/16"]
}

