################################################################
# Root of the Fairview Homelab for cattivi.com and cattivi.local.
# This Terraform config will setup:
#
# * RKE2 Cluster across all Harvester nodes, including:
#   * Ingress controller
#   * Security including Authentik or equivalent
#   * Networking & VLANs
#
# * Core VMs/Containers:
#   * Cloudflare Tunnel
#   * Netboot
#   * TrueNAS Scale (with disks and LAN passed through)
#   * Unifi Controller
#   * mySQL and PostgreSQL servers
#   * Redis server
#   * Caddy web server
#
# * Tooling:
#   * Glances
#   * Speedtest
#   * Uptime Kuma
#   * Grafana/Loki
#
# Assumed already in place. At some point we can provide a bootstrap
# config to install rancher/rke2/vault, and maybe even configure
# firewall/router and switches.
#
# * Firewall/Router
# * Switches
# * Servers running Harvester, Rancher, with a Vault instance installed.
# * Terraform Cloud
# * Vault Secrets (for bootstrapping harvester etc.)
# * Cabling, PCs, and so forth


terraform {
  cloud {
    organization = "Cattivi"

    workspaces {
      name = "networking-fairview"
    }
  }

  required_providers {
    rancher2 = {
      source = "rancher/rancher2"
      version = "3.2.0"
    }
    hcp = {
      source = "hashicorp/hcp"
      version = "0.77.0"
    }
    harvester = {
      source = "harvester/harvester"
      version = "0.6.3"
    }
  }
}

provider "hcp" {
}

provider "harvester" {
}

# resource "hcp_hvn" "example" {
#   hvn_id         = "hvn"
#   cloud_provider = "aws"
#   region         = "us-west-2"
#   cidr_block     = "172.25.16.0/20"
# }

# resource "hcp_vault_cluster" "example" {
#   cluster_id = "vault-cluster"
#   hvn_id     = hcp_hvn.example.hvn_id
#   tier       = "standard_large"
#   metrics_config {
#     datadog_api_key = "test_datadog"
#     datadog_region  = "us1"
#   }
#   audit_log_config {
#     datadog_api_key = "test_datadog"
#     datadog_region  = "us1"
#   }
#   lifecycle {
#     prevent_destroy = true
#   }
# }
#
# resource "hcp_vault_cluster_admin_token" "example" {
#   cluster_id = "test-vault-cluster"
#   token      = "var.hcp_vault_cluster_admin_token
# }
#
# resource "hcp_vault_role" "example" {
#   cluster_id = "test-vault-cluster"
#   role_id    = "test-vault-role"
# }

# provider "rancher2" {
#   api_url    = var.rancher2_api_url
#   access_key = var.rancher2_access_key
#   secret_key = var.rancher2_secret_key
#   token_key = var.rancher2_token_key
# }

# resource "rancher2_environment" "homelab-infra" {
#   name = "homelab-infra"
#   description = "Default environment for all homelab infrastructure"
#   orchestration = "cattle"
# }
