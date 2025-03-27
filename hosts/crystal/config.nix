{ config, lib, pkgs, ... }:

{
  imports = [
    ./system/environment.nix
    ./system/networking.nix
    ./services/openssh.nix
    ./system/hardware.nix
    ./system/settings.nix
    ./system/security.nix
    ./system/locale.nix
    ./system/boot.nix
  ];

  system.stateVersion = "24.11";
}
