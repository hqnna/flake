{ inputs, shared, config, lib, pkgs, ... }:

{
  imports = [
    ./users/hanna/default.nix
    ./system/environment.nix
    ./services/wireguard.nix
    ./system/networking.nix
    ./services/openssh.nix
    ./system/hardware.nix
    ./system/settings.nix
    ./system/security.nix
    ./services/zram.nix
    ./system/locale.nix
    ./system/boot.nix
    ./system/motd.nix
    shared.services
  ];

  system.stateVersion = "24.11";
  home-manager.useGlobalPkgs = false;
  home-manager.useUserPackages = true;
  home-manager.extraSpecialArgs = {
    inherit inputs;
    inherit shared;
  };
}
