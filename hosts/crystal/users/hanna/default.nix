{ config, lib, pkgs, ... }:

{
  users.users.hanna = {
    shell = pkgs.fish;
    isNormalUser = true;
    home = "/home/hanna";

    extraGroups = [
      "wheel"
      "docker"
    ];

    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEST6MgqRSn0N9ResAQ6Alt0V02GJF3XWneEDeheuQVI"
    ];
  };

  home-manager.users.hanna = { shared, pkgs, ... }: {
    imports = [
      shared.configs
      ./shell.nix
    ];

    home.username = "hanna";
    home.homeDirectory = "/home/hanna";
    home.stateVersion = "24.11";
    home.packages = with pkgs; [
      docker-compose
    ];
  };
}
