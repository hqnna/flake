{ config, lib, pkgs, ... }:

{
  services.openssh = {
    enable = true;
    allowSFTP = true;
    authorizedKeysInHomedir = false;

    settings = {
      GatewayPorts = "yes";
      KbdInteractiveAuthentication = false;
      PermitRootLogin = "prohibit-password";
      PasswordAuthentication = false;
      LogLevel = "ERROR";
      UseDns = true;
    };
  };

  users.users.root.openssh = {
    authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEST6MgqRSn0N9ResAQ6Alt0V02GJF3XWneEDeheuQVI"
    ];
  };
}
