variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "bucket_name" {
  description = "Globally unique GCS bucket name"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "region" {
  description = "GCP provider region"
  type        = string
  default     = "us-central1"
}

variable "location" {
  description = "GCS bucket location"
  type        = string
  default     = "US"
}
