{ config, lib, pkgs, ... }:

{
  users.users.hanna = {
    home = "/home/hanna";
    isNormalUser = true;
    shell = pkgs.fish;
    extraGroups = [
      "wheel"
      "docker"
    ];    
  };

  home-manager.users.hanna = { shared, pkgs, ... }: {
    imports = [
      shared.configs
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
