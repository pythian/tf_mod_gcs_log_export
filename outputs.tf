output "destination_uri" {
  description = "The GCS bucket to which the log export will write"
  value       = module.destination.destination_uri
}
