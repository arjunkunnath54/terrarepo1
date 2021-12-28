provider "azurerm" {
   
  features {}
  
  subscription_id = "58751fec-d355-49b0-a273-a5020c6daca9"
  client_id       = "4090f842-3082-49c7-a703-f5b1cc8ca26a"
  client_secret   = "eGm7Q~NRJ3EuTsOL0qvRtID6qhXUyLglXHDoj"
  tenant_id       = "de15c3a1-f1b7-4900-82bd-f4b45aabec3f"
}
terraform {
    backend "azurerm" {
        resource_group_name ="terra-rg1"
        storage_account_name = "terrastore11"
        container_name = "terracon2"
        key = "terraform.tfstate"
    }
}

resource "azurerm_resource_group" "demo" {
  name     = "demo5rg"
    location = "eastus"
}
