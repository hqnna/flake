{
  networking = {
    enableIPv6 = false;
    firewall.enable = false;
    timeServers = [ "time.cloudflare.com" ];
    nameservers = [ "1.1.1.1" "1.0.0.1" ];
    domain = "mercury.local";
    hostName = "mercury";
    hostId = "d150015b";
  };
}
