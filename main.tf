terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

provider "google" {
  project = "project-mikolo"
  credentials = file("project-mikolo-92586517fb2e.json")
}



