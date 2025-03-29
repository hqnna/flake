{ config, lib, pkgs, ... }:

{
  networking = {
    enableIPv6 = true;
    hostId = "f0f1e70c";
    hostName = "crystal";
    dhcpcd.enable = false;
    defaultGateway = "172.31.1.1";
    nameservers = [ "1.1.1.1" "1.0.0.1" ];
    timeServers = [ "time.cloudflare.com" ];
    usePredictableInterfaceNames = lib.mkForce false;

    nat = {
      enable = true;
      externalInterface = "eth0";
      internalInterfaces = [ "crystal" ];
    };

    firewall = {
      enable = true;
      allowPing = false;
      interfaces.eth0.allowedUDPPorts = [ 51820 ];
      interfaces.crystal.allowedTCPPorts = [ 22 ];
    };

    defaultGateway6 = {
      address = "fe80::1";
      interface = "eth0"; 
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
    };
  };
}
