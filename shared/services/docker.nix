{ config, lib, pkgs, ... }:

{
  virtualisation = {
    containers.enable = true;

    docker = {
      enable = true;
      enableOnBoot = true;
      logDriver = "syslog";
      liveRestore = true;

      autoPrune = {
        enable = true;
        dates = "weekly";
        flags = [ "--all" ];
      };

      daemon.settings = {
        fixed-cidr-v6 = "fd1a:cb6a:4456::/48";
        ipv6 = true;
      };
    };
  };
}
