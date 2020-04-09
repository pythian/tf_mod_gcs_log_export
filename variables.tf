variable "log_export_project_id" {
  description = "GCP Project ID where the GCS buckets will be created"
  type        = string
  # Required
}

variable "log_export_filter_string" {
  description = "The log filter to apply to collected logs in the sink project"
  type        = string
  # Required
}

variable "log_export_name" {
  description = "The name of the log sink to configure"
  type        = string
  # Required
}

variable "destination_project_id" {
  description = "GCP Project ID where the GCS buckets will be created"
  type        = string
  # Required
}

variable "destination_bucket_location" {
  description = "Bucket location where the log export buckets will be created"
  type        = string
  # Required
}

variable "destination_bucket_name" {
  description = "Name of the GCS bucket in which to store audit logs"
  type        = string
  # Required
}
