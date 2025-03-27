{ config, lib, pkgs, ... }:

{
  imports = [
    ./system/environment.nix
    ./system/networking.nix
    ./services/openssh.nix
    ./system/hardware.nix
    ./system/settings.nix
    ./system/security.nix
    ./services/podman.nix
    ./services/zram.nix
    ./system/locale.nix
    ./system/users.nix
    ./system/boot.nix
  ];

  home-manager.useGlobalPkgs = true;
  home-manager.useUserPackages = true;
  system.stateVersion = "24.11";
}
