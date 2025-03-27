{ inputs, shared, config, lib, pkgs, ... }:

{
  imports = [
    ./users/hanna/default.nix
    ./system/environment.nix
    ./system/networking.nix
    ./system/settings.nix
    ./system/security.nix
    ./system/locale.nix
    ./system/wsl.nix
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
