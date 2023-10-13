storage "file" {
  path = "vault//file"
}

listener "tcp" {
  address     = "0.0.0.0:8200"
  tls_disable = true
  tls_disable_client_certs = true
  // tls_cert_file = "/path/to/full-chain.pem"
  // tls_key_file  = "/path/to/private-key.pem"
}

// see https://blog.kubesimplify.com/how-get-started-with-hashicorp-vault
// seal "awskms" {
//   region = "<Region of KMS>"
//   kms_key_id = "<AWS KMS key ID>",
//   endpoint = "example.kms.<Region of KMS>.vpce.amazonaws.com"
// }

// api_addr = "https://vault-us-east-1.example.com:8200"
// cluster_addr = " https://node-a-us-east-1.example.com:8201"
// cluster_name = "vault-prod-us-east-1"
disable_mlock = true
// license_path = "/opt/vault/vault.hcl"
log_level = "INFO"
ui = true
