{ config, lib, pkgs, ... }:

{
  networking = {
    nameservers = [ "8.8.8.8"
 ];
    defaultGateway = "172.31.1.1";
    defaultGateway6 = {
      address = "";
      interface = "eth0";
    };
    dhcpcd.enable = false;
    usePredictableInterfaceNames = lib.mkForce false;
    interfaces = {
      eth0 = {
        ipv4.addresses = [
          { address="138.199.168.180"; prefixLength=32; }
        ];
        ipv6.addresses = [
          { address="fe80::9400:4ff:fe27:550c"; prefixLength=64; }
        ];
        ipv4.routes = [ { address = "172.31.1.1"; prefixLength = 32; } ];
        ipv6.routes = [ { address = ""; prefixLength = 128; } ];
      };
      
    };
  };
  services.udev.extraRules = ''
    ATTR{address}=="96:00:04:27:55:0c", NAME="eth0"
  '';
}
