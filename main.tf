/******************************************   SERVICE ACCOUNT  *****************************************/

resource "google_service_account" "service_account" {
  account_id   = var.service_account_id
  display_name = var.service_account_display_name
  project      = var.project_id
}

/******************************************   PRIVATE KEY  *****************************************/

resource "google_service_account_key" "service_account_key" {
  count              = var.create_private_key ? 1 : 0
  service_account_id = google_service_account.service_account.name
}

/******************************************   CLOUDSQL  *****************************************/

resource "google_project_iam_member" "cloudsql_client" {
  count   = var.enable_cloudsql_client ? 1 : 0
  project = var.project_id
  role    = "roles/cloudsql.client"
  member  = "serviceAccount:${google_service_account.service_account.email}"
}

resource "google_project_iam_member" "cloudsql_viewer" {
  count   = var.enable_cloudsql_client ? 1 : 0
  project = var.project_id
  role    = "roles/cloudsql.viewer"
  member  = "serviceAccount:${google_service_account.service_account.email}"
}

resource "google_project_iam_member" "cloudsql_instance_user" {
  count   = var.enable_cloudsql_client ? 1 : 0
  project = var.project_id
  role    = "roles/cloudsql.instanceUser"
  member  = "serviceAccount:${google_service_account.service_account.email}"
}

/******************************************   CLOUD STORAGE  *****************************************/

resource "google_project_iam_member" "storage_object_viewer" {
  count   = var.enable_cloud_storage ? 1 : 0
  project = var.project_id
  role    = "roles/storage.objectViewer"
  member  = "serviceAccount:${google_service_account.service_account.email}"
}

/******************************************   SECRET MANAGER  *****************************************/

resource "google_project_iam_member" "secret_manager_accessor" {
  count   = var.enable_cloud_secret_manager ? 1 : 0
  project = var.project_id
  role    = "roles/secretmanager.secretAccessor"
  member  = "serviceAccount:${google_service_account.service_account.email}"
}
