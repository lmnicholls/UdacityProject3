provider "azurerm" {
  tenant_id       = "${var.tenant_id}"
  subscription_id = "${var.subscription_id}"
  client_id       = "${var.client_id}"
  client_secret   = "${var.client_secret}"
  features {}
}
terraform {
  backend "azurerm" {
    storage_account_name = "tfstate1984821299"
    container_name       = "tfstate"
    key                  = "test.terraform.tfstate"
    access_key           = "BykZlBdExygjb+QZK0/khwLTBkfq7VUWtIHdz4P9kE/mwh5biWBxaHtwngFeBcjrxY01AC6pjYuh+AStly929Q=="
  }
}
# module "resource_group" {
#   source               = "../../modules/resource_group"
#   resource_group       = "${var.resource_group}"
#   location             = "${var.location}"
# }

module "network" {
  source               = "../../modules/network"
  address_space        = "${var.address_space}"
  location             = "${var.location}"
  virtual_network_name = "${var.virtual_network_name}"
  application_type     = "${var.application_type}"
  resource_type        = "NET"
  resource_group       = resource.azurerm_resource_group.azuredevops.name
  address_prefix_test  = "${var.address_prefix_test}"
}

module "nsg-test" {
  source           = "../../modules/networksecuritygroup"
  location         = "${var.location}"
  application_type = "${var.application_type}"
  resource_type    = "NSG"
  resource_group   = resource.azurerm_resource_group.azuredevops.name
  subnet_id        = "${module.network.subnet_id_test}"
  # address_prefix_test = "${var.address_prefix_test}"
}
module "appservice" {
  source           = "../../modules/appservice"
  location         = "${var.location}"
  application_type = "${var.application_type}"
  resource_type    = "AppService"
  resource_group   = resource.azurerm_resource_group.azuredevops.name
}
module "publicip" {
  source           = "../../modules/publicip"
  location         = "${var.location}"
  application_type = "${var.application_type}"
  resource_type    = "publicip"
  resource_group   = resource.azurerm_resource_group.azuredevops.name
}