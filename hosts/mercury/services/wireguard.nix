{ config, ... }:

{
  networking.wireguard = {
    enable = true;

    interfaces = {
      services = {
        ips = [ "10.0.0.1/32" ];
        privateKeyFile = config.age.secrets.services.path;

        peers = [
          {
            publicKey = "mC/rvYIISPy6IoDgFXaZ1tdUZX5BI/Dc0HfMOa7mMUg=";
            allowedIPs = [ "10.0.0.2/32" ];
            endpoint = "178.156.150.99:51820";
            persistentKeepalive = 20;
          }
        ];
      };
    };
  };
}
