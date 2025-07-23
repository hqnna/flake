{
  services.openssh = {
    enable = true;
    allowSFTP = false;

    settings = {
      PermitRootLogin = "no";
      PasswordAuthentication = false;
      KbdInteractiveAuthentication = false;
      KexAlgorithms = [ "curve25519-sha256" ];
      AllowGroups = [ "wheel" ];
      GatewayPorts = "yes";
      LogLevel = "ERROR";
    };
  };
}
