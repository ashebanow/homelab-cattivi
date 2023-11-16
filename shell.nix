{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.consul
    pkgs.damon
    pkgs.levant
    pkgs.nomad
    pkgs.nomad-autoscaler
    pkgs.nomad-pack
    pkgs.packer
    pkgs.terraform
    pkgs.terragrunt
    pkgs.tflint
    pkgs.vault

    # keep this line if you use bash
    pkgs.zsh
  ];
}
