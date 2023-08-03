# Azure GUIDS
variable "subscription_id" {
    type = string
    default = "0ee6d06f-69ab-4b3b-9f35-003e1b6eb227"
}
variable "client_id" {
    type = string
    default = "bbe619d6-3908-4ee0-9c38-7d8482e1f72a"
}
variable "client_secret" {
    type = string
    default = "GFm8Q~BPO9ZkuyqEfsHpmInwZsNPxpSDCPMijbuW"
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

