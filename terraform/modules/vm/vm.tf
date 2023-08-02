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
  name                = "MyVM"
  location            = "East US"
  resource_group_name = "Azuredevops"
  size                = "Standard_DS2_v2"
  admin_username      = "adminuser"
  network_interface_ids = []
  admin_ssh_key {
    username   = "adminuser"
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCy/bcs/JUh2cf3sQQveOeSkcR5qKCaGAYA+M571kGK6w/MxEdD/dao4Vvj/4RHsosubKfn30BcPvIZfy47CqYPhCrbtJAcn68l4I5rPdP+Cg2XNBgsozj+Cl2aN6pMKOCjxzDR6Cz8vx7yTscA/AUJ/zIK/1J8m0uvzCqMUL3YyCP4BJfuRBLt9/GtgfW4svzvvNEFsuNYc/VjWmHU60f3CoyM0Q500sFoMYrfBNfRS8lazsurfwRbuUHxX9++dKqFritS2Sgx94nqTMnW8J2rR5h1dsApuU5DCvLFm5BpteGLFtdgpSlQuEj56jZ5htesMsOcSQ5FomZQsEFhnPGZ16/rJGnB5hgXsmYnpZGRFXMxpgxCb9ZD/uNnKTopwVtGCnNRhcR0MAJ/M9pyc1a5JgI7A74RgbsG9SonxvXVX5Bfd/1nX8tmGv0B+QamHQ0GO/LAhcS26gKHRpdcj5zNDeU9BosIIpmr6mjIjDcKtC+eC1vBvH8oz8OC1gsJ2Y0= lnicholls@RELIAS-R90VR4HC"
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
