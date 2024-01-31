variable "project" {
  description = "Project"
  default     = "ngulik-de-zoomcamp"
}

variable "region" {
  description = "Region"
  default     = "asia-southeast2"
}

variable "location" {
  description = "Project Location"
  default     = "asia-southeast2"
}

variable "bq_dataset_name" {
  description = "My BigQuery Dataset Name"
  default     = "dataset_dezoomcamp"
}

variable "gcs_bucket_name" {
  description = "My Storage Bucket Name"
  default     = "ngulik-de-zoomcamp-bucket"
}

variable "gcs_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"
}

variable "credentials" {
  description = "My Credentials"
  default     = "./keys/my-creds.json"
}