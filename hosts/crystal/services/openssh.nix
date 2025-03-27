{ config, lib, pkgs, ... }:

{
  services.openssh = {
    enable = true;
    allowSFTP = true;
    authorizedKeysInHomedir = false;

    extraConfig =	''
      PrintLastLog no
    '';

    settings = {
      GatewayPorts = "yes";
      KbdInteractiveAuthentication = false;
      PermitRootLogin = "prohibit-password";
      PasswordAuthentication = false;
      LogLevel = "ERROR";
      UseDns = true;
    };
  };
}
