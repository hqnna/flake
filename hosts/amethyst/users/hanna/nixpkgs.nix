{ inputs, config, lib, pkgs, ... }:

{
  nixpkgs.config = {
    allowUnfree = true;
    allowBroken = false;
  };

  nixpkgs.overlays = [
    (f: p: { agenix = inputs.age.packages.${pkgs.system}.default; })
    (import ./overlays/cloudflared.nix)
  ];
}
