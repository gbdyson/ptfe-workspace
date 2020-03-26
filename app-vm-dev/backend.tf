terraform {
  required_version = ">= 0.12.20"
  backend "remote" {
    hostname     = "tfe-nfcu.digitalinnovation.dev"
    organization = "gdyson-org"

    workspaces {
      name = "app-vm-dev"

    }
  }
}
