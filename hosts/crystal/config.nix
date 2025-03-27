{ config, lib, pkgs, ... }:

{
  imports = [
    ./system/networking.nix
    ./services/openssh.nix
    ./system/hardware.nix
    ./system/boot.nix
  ];

  system.stateVersion = "24.11";
}
