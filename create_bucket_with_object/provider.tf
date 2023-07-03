terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.71.0"
    }
  }
}

provider "google" {
  project = "ch-terraform-learning"
  region = "us-central1"
}