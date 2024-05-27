terraform {
  backend "remote" {
    organization = "Terraform-POC-GL"
    workspaces {
      name = "aks"
    }
  }
}
