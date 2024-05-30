provider "google" {
  credentials = file("../../cred.json") #change cred.json file according to your file location

  project = var.project_id
  region  = var.region
  zone    = var.zone 
}
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.51.0"
    }
  }
}