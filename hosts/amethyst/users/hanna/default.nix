{ config, lib, pkgs, ... }:

{
  users.users.hanna = {
    home = "/home/hanna";
    extraGroups = [ "wheel" ];
    isNormalUser = true;
    shell = pkgs.fish;
  };

  home-manager.users.hanna = { common, pkgs, ... }: {
    imports = [
      common.configs
      ./nixpkgs.nix
      ./direnv.nix
      ./shell.nix
      ./git.nix
      ./npm.nix
      ./ssh.nix
      ./jj.nix
    ];

    home.username = "hanna";
    home.homeDirectory = "/home/hanna";
    home.stateVersion = "24.11";
    home.packages = with pkgs; [
      cloudflared
      podman
      agenix
      age
    ];
  };
}
