
system = "terraexample"
servername = "vmterraform"
location = "westus2"
admin_username = "terraadmin"
admin_password = "S3cur3P@ssw0rd"
vnet_address_space = ["10.0.0.0/16","10.1.0.0/16"]
os = {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04.0-LTS"
    version   = "latest"
}
