 subscription_id = "f2e3c986-2967-4d73-bb15-728b54715951"
  client_id       = "8ad1e4c4-2bbe-4d4b-b54b-335da2aa70b4"
  client_secret   = "Nkdox_DkC~XAtb6xPI0k59Wu7.qrE6qCs_"
  tenant_id       = "70765d76-0633-4af1-8b6e-c7543d557969"
system = "terraexample1"
servername = "vmterraform1"
location = "eastus2"
admin_username = "terraadmin"
admin_password = "S3cur3P@ssw0rd"
vnet_address_space = ["10.0.0.0/16","10.1.0.0/16"]
os = {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04.0-LTS"
    version   = "latest"
}
