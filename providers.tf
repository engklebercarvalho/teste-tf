terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.7.0"
    }
  }

  # Update this block with the location of your terraform state file
  backend "azurerm" {
    resource_group_name  = "RG-MC"
    storage_account_name = "sakleberstatefile"
    container_name       = "tfstate"
    key                  = "1yB88JRCj+jeRKGFgtB5EJBuR3j7G+vCWR4sAIZJBtVVEqK8dHlV64dt6atyyM6MSsvbf3rIpBGh+AStLY40pA=="
   
  }
}

provider "azurerm" {
  features {}

}
