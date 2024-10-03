/******************************************
  SERVICE ACCOUNT
 *****************************************/

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

/******************************************
  PRIVATE KEY
 *****************************************/

variable "create_private_key" {
  type        = bool
  description = "Whether to create the private key or not"
  default     = false
}

/******************************************
  CLOUDSQL
 *****************************************/

variable "enable_cloudsql_client" {
  description = "Whether to enable the Cloud SQL Client role for this service account"
  type        = bool
  default     = false
}
