{ config, lib, pkgs, ... }:

{
  programs.ssh = {
    enable = true;

    matchBlocks = {
      crystal = {
        identityFile = [ "~/.ssh/id_ed25519" ];
        hostname = "10.0.0.1";
        user = "hanna";
        port = 22;
      };
    };
  };
}
