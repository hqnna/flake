{ config, lib, pkgs, ... }:

{
  users.users.root = {
    home = "/root";
    shell = pkgs.fish;
    extraGroups = [ "wheel" ];
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEST6MgqRSn0N9ResAQ6Alt0V02GJF3XWneEDeheuQVI"
    ];
  };

  home-manager.users.root = {
    imports = [
      ./fastfetch.nix
      ./starship.nix
      ./hyfetch.nix
      ./kakoune.nix
      ./shell.nix
      ./btop.nix
      ./lsd.nix
      ./xdg.nix
    ];

    home.username = "root";
    home.homeDirectory = "/root";
    home.stateVersion = "24.11";
  };
}
