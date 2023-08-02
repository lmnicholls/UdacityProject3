resource "azurerm_resource_group" "azuredevops" {
  name     = "${var.resource_group}"
  location = "${var.location}"
}