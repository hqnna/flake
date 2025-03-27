{ config, lib, pkgs, ... }:

{
  users.users.hanna = {
    shell = pkgs.fish;
    isNormalUser = true;
    home = "/home/hanna";
    extraGroups = [ "wheel" ];
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEST6MgqRSn0N9ResAQ6Alt0V02GJF3XWneEDeheuQVI"
    ];
  };

  home-manager.users.hanna = {
    imports = [
      ../../../common/configs
      ./shell.nix
    ];

    home.username = "hanna";
    home.homeDirectory = "/home/hanna";
    home.stateVersion = "24.11";
  };
}
