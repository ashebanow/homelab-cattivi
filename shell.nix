{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    consul
    # damon
    levant
    # nomad
    # nomad-autoscaler
    # nomad-pack
    packer
    terraform
    # terraform.withPlugins (p: [
    #   p.archive
    #   p.aws
    #   p.cloudflare
    #   p.consul
    #   p.docker
    #   p.external
    #   # p.github
    #   # p.grafana
    #   p.helm
    #   p.kubectl
    #   p.kubernetes
    #   p.local
    #   p.nomad
    #   p.null
    #   p.rancher2
    #   p.random
    #   p.tls
    #   p.vault
    #   # p.harvester (not in nixpkgs!)
    #   # p.rke (not in nixpkgs!)
    #   # p.template (not in nixpkgs!)
    # ])
    terragrunt
    tflint
    vault

    # keep this line if you use bash
    pkgs.zsh
  ];
}
