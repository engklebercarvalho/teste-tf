variable "resource_group_name" { type = string }
variable "storage_account_name" { type = string }
variable "container_name" { type = string }
variable "key" { type = string }

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.7.0"
    }
  }

  # Update this block with the location of your terraform state file
  backend "azurerm" {
    resource_group_name  = var.resource_group_name
    storage_account_name = var.storage_account_name
    container_name       = var.container_name
    key                  = var.key
   
  }
}

provider "azurerm" {
  features {}

}
