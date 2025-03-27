{ shared, config, lib, pkgs, ... }:

{
  imports = [
    ./system/environment.nix
    ./system/networking.nix
    ./system/settings.nix
    ./system/security.nix
    ./system/locale.nix
    ./system/wsl.nix
    shared.services
    shared.system
  ];

  home-manager.useGlobalPkgs = false;
  home-manager.useUserPackages = true;
  system.stateVersion = "24.11";
}
