# Azure GUIDS
variable "subscription_id" {
    type = string
    default = "7de72e36-dc87-4e3f-aa67-6dacbc9993c6"
}
variable "client_id" {
    type = string
    default = "75eb3e5b-c883-4fc0-a8f2-1742334aa537"
}
variable "client_secret" {
    type = string
    default = "Flm8Q~is6pJ115U4lHuZgyg3ll3gs8mZsJXPKbVL"
}
variable "tenant_id" {
    type = string
    default = "f958e84a-92b8-439f-a62d-4f45996b6d07"
}

# Resource Group/Location
variable "location" {
    type = string
    default = "South Central US"
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

