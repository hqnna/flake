{ config, lib, pkgs, ... }:

{
  networking = {
    enableIPv6 = false;
    hostId = "f0f1e70c";
    hostName = "crystal";
    dhcpcd.enable = false;
    defaultGateway6 = "fe80::1";
    defaultGateway = "172.31.1.1";
    nameservers = [ "1.1.1.1" "1.0.0.1" ];
    timeServers = [ "time.cloudflare.com" ];
    usePredictableInterfaceNames = lib.mkForce false;

    firewall = {
      enable = true;
      allowPing = false;
      interfaces.eth0.allowedUDPPorts = [ 51820 ];
      interfaces.crystal.allowedTCPPorts = [ 22 ];
    };

    interfaces.eth0 = {
      ipv4.addresses = [{
        address = "178.156.175.83";
        prefixLength = 32;
      }];

      ipv6.addresses = [{
        address="2a01:4ff:f0:e01d::1";
        prefixLength=64;
      }];

      ipv4.routes = [{
        address = "172.31.1.1";
        prefixLength = 32;
      }];

      ipv6.routes = [{
        address = "fe80::1";
        prefixLength = 128;
      }];
    };
  };
}
