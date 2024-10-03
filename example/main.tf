module "service-account-example" {
  source = "../"

  project_id                   = var.project_id
  service_account_id           = "example"
  service_account_display_name = "Example Service Account"
  create_private_key           = true
  enable_cloudsql_client       = true
}
