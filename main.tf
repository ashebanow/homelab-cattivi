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
#   * Vault
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
# Assumed already in place:
#
# * Firewall/Router
# * Switches
# * Servers running Harvester, Rancher
# * Terraform Cloud
# * Cabling, PCs, and so forth


terraform {
  cloud {
    organization = "Cattivi"

    workspaces {
      name = "networking-fairview"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

