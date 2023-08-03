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
  location            = "East US"
  resource_group_name = "Azuredevops"
  size                = "Standard_DS2_v2"
  admin_username      = "adminuser"
  network_interface_ids = []
  admin_ssh_key {
    username   = "adminuser"
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQD2jPrC7YjBW/GN0iLDrgv/UXsam9JwnNtzDIjHaxCxsXiVCCAcRQ6KoFzndMxjUKb0GjgwAsbMmoKcoJQpbppPi/FDnXEYxQ980RKEPGEVVSbEnoHoG8MvjC5CNFkeeENQkaL3ybo2yAOI6cHCQNUbS3ZYuwkZr4tJwgScZPTFnosKUke6ekc8yYctQyUSQHedV3ayLkQP+o+xgNBrpqxXuq/P0fVXyvlRc4DEe/e2hrkfuliXmmoyVJYprEyfXL8KjJwL42LHq+3P5su0nqv4d7h1dAlGt/xnRWgXhgbsdwy7FEEBb9L/jsB15dQlMZWQPpbaFZKpAyrsJbNbDQY1pt+wKX5+tmzznhJLp0TA9MiSJ4g2ZoAQl10PwiVlK94zS+VnCANhD30AILYrhGfQfBP6kzxxzXlSad2EJO0SpGuJNl9KvQvxQBSU0IodEi2vyesewmlQKILpoHOVoBYXpxN++xbKEM+U0+7MVgJZCc7gWMhF02CzGHkkIIKkYQk= relias\\lnicholls@RELIAS-R90VR4HC"
  }
  os_disk {
    caching           = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_id = "VMImage"
}
