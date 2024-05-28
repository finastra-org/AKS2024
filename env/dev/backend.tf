terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "Terraform-POC-GL"
    workspaces {
      name = "AKS2024"
    }
  }
}





/*terraform {
  backend "azurerm" {
    resource_group_name  = "terraform-poc"
    storage_account_name = "techdemo11"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}*/
