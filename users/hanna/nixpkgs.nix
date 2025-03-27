{ config, lib, pkgs, ... }:

{
  nixpkgs.config = {
    allowUnfree = true;
    allowBroken = false;
  };

  nixpkgs.overlays = [
    (import ./overlays/cloudflared.nix)
  ];
}
