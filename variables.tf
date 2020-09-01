
  variable "subscription_id" {
    type = "string"
    default = "dbbc0b3e-8e57-4c11-8135-a3192efc6e64"
  }

  variable "client_id" {
    type = "string"
    default = "dc0413ab-1b06-411d-8b58-27733c29b6a9"
  }

  variable "client_secret" {
    type = "string"
    default = "z6~u598~6vvoYfvSZYA32zLf_LvZ7w74_L"
    
  }

  variable "tenant_id" {
    type = "string"
    default = "21252e3f-06d1-4864-bec1-9d0f50512eb5"
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
