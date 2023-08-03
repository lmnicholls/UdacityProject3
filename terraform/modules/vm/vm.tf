resource "azurerm_network_interface" "" {
  name                = "MyNetworkInterface"
  location            = "East US"
  resource_group_name = "Azuredevops"

  ip_configuration {
    name                          = "internal"
    subnet_id                     = ""
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = ""
  }
}

resource "azurerm_linux_virtual_machine" "" {
  name                = "Project3VM"
  location            = "South Central US"
  resource_group_name = "Azuredevops"
  size                = "Standard_DS2_v2"
  admin_username      = "azureuser"
  network_interface_ids = []
  admin_ssh_key {
    username   = "azureuser"
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCZif1eu+iHUu0uuHyZo0bLPn+af7s+CM7uYa9zAuivDQNh6+hIPRP6EcEOBBF9BI6JwtlGRyHL+LE8VTzhKa47ONuTAKxhD6XK9xPhQU9qmK0xKdnvG9/7gHq3+gHHbXos3w0tuGyP0M3vJw1FdPcvyTEFxAPGhNKJqTisyyPAQZAQiKf75JU4G6+O0ytgXCgzDcApE5+RzTbv6Tw2xDxWTc2keOre0QrQqf5oIpzFB8ER4iCqwLGIEqg07zy1Wb4dKyzLtl+S1usno3OJpOIT5LdVzlksJA5WgvCS/+ZvxEgr5c+NYWjKzSS/ZV2YqIyPfw4YymQhZmPR6L5zdZX8i6CmcX5yG8i0Srx2un0I1Hm6KAfqzIZVDt/FEfUCKqkjrqLm6f66c4nK2/APgpn4NbZtVn28d6tC8E+enImDwfMJGJUWaS1UIT9xSvgAPYdEabz/QM36TJAg3W3UeF7QzyDcIygfjUr7iKQpdi+pmyDsmGFo34opqD52SUtLt/k= odl_user@cc-ec005490-6d9fc4b856-m4vk7"
  }
  os_disk {
    caching           = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
}
