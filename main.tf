terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.76.0"
    }
  }
  backend "azurerm" {
    resource_group_name =  "blobresourcegroup2"
    storage_account_name = "blobcontainerseventyone"
    container_name = "myterraformcontainer"
    key = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-terraform3"
  location = "eastus"
}

resource "azurerm_resource_group" "rg2" {
  name     = "rg-terraform4"
  location = "eastus"
}
