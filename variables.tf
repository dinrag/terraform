
  variable "subscription_id" {
    type = "string"
    default = "04218b49-c131-4220-9e3a-a764267ec388"
  }

  variable "client_id" {
    type = "string"
    default = "06a0da35-7cb5-4db0-9d9e-dec956948aa4"
  }

  variable "client_secret" {
    type = "string"
    default = "qu102NjCThl4ze-Idef84TP0S2nNLTujCj"
    
  }

  variable "tenant_id" {
    type = "string"
    default = "d408569e-a5c1-4f3a-9821-fbb801617804"
  }



variable "system" {
    type = string
    description = "Name of the system or environment"
    default = "terraexample2"
}

variable "servername" {
    type = string
    description = "Server name of the virtual machine"
    default = "vm-terraform2"
}

variable "location" {
    type = string
    description = "Azure location of terraform server environment"
    default = "westus2"

}



variable "admin_username" {
    type = string
    description = "Administrator username for server"
    default = "terraadmin"
}

variable "admin_password" {
    type = string
    description = "Administrator password for server"
    default = "S3cur3P@ssw0rd"
}

variable "vnet_address_space" { 
    type = list
    description = "Address space for Virtual Network"
    default = ["10.0.0.0/16"]
}

variable "managed_disk_type" { 
    type = map
    description = "Disk type Premium in Primary location Standard in DR location"

    default = {
        westus2 = "Premium_LRS"
        eastus = "Standard_LRS"
    }
}

variable "vm_size" {
    type = string
    description = "Size of VM"
    default = "Standard_B1s"
}

variable "os" {
    description = "OS image to deploy"
    type = object({
        publisher = string
        offer = string
        sku = string
        version = string
  })
  
  default = {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04.0-LTS"
    version   = "latest"
}
}      
