{
  description =
    "A Nix-flake-based development environment for Terraform, Packer, and Nomad";


  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.05";

  outputs = { self, nixpkgs }:
    let
      supportedSystems = [
        "i686-linux"
        "x86_64-linux"
        "x86_64-darwin"
        "aarch64-linux"
        "aarch64-darwin"
      ];
      forEachSupportedSystem = f: nixpkgs.lib.genAttrs supportedSystems (system: f {
        pkgs = import nixpkgs { inherit system; };
      });
    in
    {
      devShells = forEachSupportedSystem ({ pkgs }: {
        default = pkgs.mkShell {
          packages = with pkgs; [
	          consul
            # damon
            levant
            # nomad
            # nomad-autoscaler
            # nomad-pack
            packer
            terraform.withPlugins (p: [
              p.archive
              # p.aws
              p.cloudflare
              p.consul
              p.external
              # p.github
              # p.grafana
              p.harvester
              p.helm
              p.kubernetes
              p.local
              p.nomad
              p.null
              p.rancher2
              p.random
              p.rke
              p.template
              p.tls
              p.vault
            ])
            terragrunt
            tflint
            vault
          ];
        };
      });
    };
}