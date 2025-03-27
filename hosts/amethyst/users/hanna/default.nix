{ config, lib, pkgs, ... }:

{
  users.users.hanna = {
    home = "/home/hanna";
    extraGroups = [ "wheel" ];
    isNormalUser = true;
    shell = pkgs.fish;
  };

  home-manager.users.hanna = { pkgs, ... }: {
    imports = [
      ./fastfetch.nix
      ./starship.nix
      ./nixpkgs.nix
      ./hyfetch.nix
      ./kakoune.nix
      ./direnv.nix
      ./shell.nix
      ./btop.nix
      ./git.nix
      ./lsd.nix
      ./npm.nix
      ./xdg.nix
      ./jj.nix
    ];

    home.username = "hanna";
    home.homeDirectory = "/home/hanna";
    home.stateVersion = "24.11";
    home.packages = with pkgs; [
      cloudflared
      podman
      age
    ];
  };
}
