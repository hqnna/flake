{ config, lib, pkgs, ... }:

{
  services.openssh = {
    enable = true;
    allowSFTP = true;
    authorizedKeysInHomedir = false;

    listenAddresses = [{
      addr = "10.0.0.1";
      port = 22;
    }];

    extraConfig = ''
      PrintLastLog no
    '';

    settings = {
      GatewayPorts = "yes";
      PermitRootLogin = "no";
      KbdInteractiveAuthentication = false;
      PasswordAuthentication = false;
      LogLevel = "ERROR";
      UseDns = true;
    };
  };
}
