terraform {
  backend "remote" {
    organization = "hashicorp-learn"

    workspaces {
      name = "infrastructure-pipelines-workshop"
    }
  }
}

provider "google" {
  version = "3.10.0"
  project = var.google_project
  region  = var.region
}
