output "service_account_email" {
  value       = google_service_account.service_account.email
  description = "The email address of the service account"
}

output "service_account_key_file" {
  value       = var.create_private_key ? google_service_account_key.service_account_key[0].private_key : null
  description = "The path to the service account key file"
  sensitive   = true
}
