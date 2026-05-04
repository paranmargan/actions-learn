terraform {
    required_version = ">= 1.5.7"


required_providers {
    google = {
        source = "hashicorp/google"
        version = "~> 7.0"
    }
}
}

provider "google" {
    project = var.project_id
    region = var.region
}

resource "google_storage_bucket" "app_bucket"{
    name = var.bucket_name
    location = var.location
    storage_class = "STANDARD"
    uniform_bucket_level_access = true
    force_destroy = false

    labels = {
        environment = var.environment
        managed_by = "terraform"
    }
    versioning {
        enabled = true
    }
}