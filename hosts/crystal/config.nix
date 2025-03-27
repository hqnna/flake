{ config, lib, pkgs, ... }:

{
  imports = [
    ./system/networking.nix
    ./system/hardware.nix
  ];

  system.stateVersion = "24.11";
}
