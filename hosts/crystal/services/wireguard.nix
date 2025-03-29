{ config, lib, pkgs, ... }:

{
  networking.wireguard = {
    enable = true;

    interfaces.crystal = {
      listenPort = 51820;
      ips = [ "10.0.0.1/32" ];
      privateKeyFile = config.age.secrets.wireguard.path;

      peers = [{
        publicKey = "JEyJdie/pcWpA26CfyQwq6y5e15aXMp/V5oj72tQPjQ=";
        allowedIPs = [ "10.0.0.2/32" ];
      }];
    };
  };
}
