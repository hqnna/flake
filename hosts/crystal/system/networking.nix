{ config, lib, pkgs, ... }:

{
  networking = {
    enableIPv6 = false;
    hostId = "f0f1e70c";
    hostName = "crystal";
    dhcpcd.enable = false;
    defaultGateway = "172.31.1.1";
    nameservers = [ "1.1.1.1" "1.0.0.1" ];
    timeServers = [ "time.cloudflare.com" ];
    usePredictableInterfaceNames = lib.mkForce false;

    firewall = {
      enable = true;
      allowPing = false;
      interfaces.eth0 = {
        allowedTCPPorts = [ 22 ];
      };
    };

    interfaces.eth0 = {
      ipv4.addresses = [
        {
          address="138.199.168.180";
          prefixLength=32;
        }
      ];

      ipv4.routes = [
        {
          address = "172.31.1.1";
          prefixLength = 32;
        }
      ];
    };
  };
}
