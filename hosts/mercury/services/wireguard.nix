{ config, ... }:

{
  networking.wireguard = {
    enable = true;

    interfaces = {
      services = {
        ips = [ "192.168.1.2/32" ];
        privateKeyFile = config.age.secrets.services.path;

        peers = [
          {
            publicKey = "mC/rvYIISPy6IoDgFXaZ1tdUZX5BI/Dc0HfMOa7mMUg=";
            allowedIPs = [ "192.168.1.1/32" ];
            endpoint = "178.156.150.99:51820";
            persistentKeepalive = 20;
          }
        ];
      };
    };
  };
}
