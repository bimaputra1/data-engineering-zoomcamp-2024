terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.14.0"
    }
  }
}

provider "google" {
  credentials = "./keys/my-creds.json"
  project     = "ngulik-de-zoomcamp"
  region      = "asia-southeast2"
}

resource "google_storage_bucket" "data-lake-bucket" {
  name          = "ngulik-de-zoomcamp-bucket"
  location      = "asia-southeast2"

  # Optional, but recommended settings:
  storage_class = "STANDARD"
  uniform_bucket_level_access = true

  versioning {
    enabled     = true
  }

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = 30  // days
    }
  }

  force_destroy = true
}