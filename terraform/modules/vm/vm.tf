resource "azurerm_network_interface" "" {
  name                = "MyNetworkInterface"
  location            = "South Central US"
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
  location            = "South Central US"
  resource_group_name = "Azuredevops"
  size                = "Standard_DS2_v2"
  admin_username      = "adminuser"
  network_interface_ids = []
  admin_ssh_key {
    username   = "adminuser"
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDAY/5crDOvVR8qEEUBg8FIvBF6spH2hDjp5JkmaGbTgfKdG08AMfrBNZF8yb8CM52E+7Aisvhb4xxAs/DINc+FWT2d/b8lnvNBmwY7x3BvYg2sQXtaM0TcGLBGZP6LqTdDEPFmvhpECFE0OC9B6eY3YHCDDgksQmyumYeCA0qFltPcKKVxBE3n62+1zDOzjJMrnnMb1H/EbOQX5ZPiBEhS9rPhPz6CSRRhtQC1zYNchmFoRlm1P1KnaV7nNnJvQ5Dc/UlHab1pfmUnF7S8QbzaVMf/5gyxZtYzjw8kWFL7+quCaKjPDudl0BCbguJd0r1aJYLEfQId2b0s/a5KuBDCEcg4G8nnm8tK0Bn9e+vcRWDOcwO0zpZVvQERHCHx/v8DHU5YXynv3dhgnlAy7tYOV8YhTWos3+Ao1LnvRE4uOlsrk7S5ez/5ZAiuU4rZroG4IV/holgSGs6VJTuTZm5UQYVllk8Jc0+WgxNPKDai/Pu6i2xZrtBO+OkGxbeA3n8= lnicholls@RELIAS-R90VR4HC"
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
