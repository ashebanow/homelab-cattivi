variable "name" {
  default = "networking-fairview"
}

variable "rancher_version" {  
  default = "stable"
}

variable "rancher2_api_url" {
  default = "https://rancher.cattivi.local"
}

# must provide the token_key OR both access_key and secret_key
# NOTE: these should come from vault
variable "rancher2_access_key" {}
variable "rancher2_secret_key" {}
variable "rancher2_token_key" {}

# NOTE: this should come from vault
variable "hcp_vault_cluster_admin_token" {}