/******************************************   SERVICE ACCOUNT  *****************************************/

variable "project_id" {
  description = "The ID of the project in which to create the service account"
  type        = string
}

variable "service_account_id" {
  description = "The ID of the service account to create"
  type        = string
}

variable "service_account_display_name" {
  description = "The display name of the service account"
  type        = string
}

/******************************************   PRIVATE KEY  *****************************************/

variable "create_private_key" {
  type        = bool
  description = "Whether to create the private key or not"
  default     = false
}

/******************************************   CLOUDSQL  *****************************************/

variable "enable_cloudsql_client" {
  description = "Whether to enable the Cloud SQL Client role for this service account"
  type        = bool
  default     = false
}

/******************************************   CLOUD STORAGE  *****************************************/

variable "enable_cloud_storage_object_viewer" {
  description = "Enable Cloud Storage access for the service account"
  type        = bool
  default     = false
}

variable "enable_cloud_storage_object_creator" {
  description = "Enable Cloud Storage access for the service account"
  type        = bool
  default     = false
}

/******************************************   CLOUD STORAGE ADMIN  *****************************************/

variable "enable_cloud_storage_admin" {
  description = "Enable Cloud Storage Admin role for the service account (full storage admin access)"
  type        = bool
  default     = false
}

/******************************************   SERVICE ACCOUNT TOKEN CREATOR  *****************************************/

variable "enable_service_account_token_creator" {
  description = "Enable Service Account Token Creator role for the service account"
  type        = bool
  default     = false
}

/******************************************   SECRET MANAGER  *****************************************/

variable "enable_cloud_secret_manager" {
  description = "Enable Secret Manager access for the service account"
  type        = bool
  default     = false
}
