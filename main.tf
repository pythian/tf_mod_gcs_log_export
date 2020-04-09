module "log_export" {
  source                 = "terraform-google-modules/log-export/google"
  version                = "4.0.1"

  destination_uri        = module.destination.destination_uri
  filter                 = var.log_export_filter_string
  log_sink_name          = var.log_export_name

  parent_resource_id     = var.log_export_project_id
  parent_resource_type   = "project"
  unique_writer_identity = true
}

module "destination" {
  source                   = "terraform-google-modules/log-export/google//modules/storage"
  version                  = "4.0.1"

  project_id               = var.destination_project_id
  storage_bucket_name      = var.destination_bucket_name
  location                 = var.destination_bucket_location
  log_sink_writer_identity = module.log_export.writer_identity
}
