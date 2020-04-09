### Google Project Audit Log Sinks for EDP Projects

Creates Google Storage Bucket and Log Export for EDP projects.

#### Dependencies

1. GCP Project.
2. Access, minimum roles list is specified below.

roles/editor (shared logs project, where the bucket is created)
roles/logging.configWriter (log export project, from where the logs are collected)

It is acceptable to use the same project for exports and destinations.

#### Example Terraform Variables

    log_export_project_id = "ok-data-proj"
    log_export_name       = "ok-data-proj-logs"

    #for example:
    log_export_filter_string = <<FILTER
resource.type = gce_instance OR
resource.type = project
FILTER

    destination_project_id            = "ok-logs-proj"
    destination_bucket_location       = "us"
    destination_bucket_name           = "logs-ok-data-proj"
