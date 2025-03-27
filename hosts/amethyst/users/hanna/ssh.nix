{ config, lib, pkgs, ... }:

{
  programs.ssh = {
    enable = true;

    matchBlocks = {
      crystal = {
        identityFile = [ "~/.ssh/id_ed25519" ];
        hostname = "138.199.168.180";
        user = "root";
        port = 22;
      };
    };
  };
}
