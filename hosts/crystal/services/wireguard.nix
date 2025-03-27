{ config, lib, pkgs, ... }:

{
  networking.wireguard = {
    enable = true;

    interfaces.crystal = {
      listenPort = 51820;
      ips = [ "10.0.0.1/32" ];
      privateKeyFile = config.age.secrets.wireguard.path;

      peers = [{
        publicKey = "5mDRrican38tKePrdarYo3O08TVP+tSXmZvr6H20wGw=";
        allowedIPs = [ "10.0.0.2/32" ];
      }];
    };
  };
}
