{ config, ... }:

{
  security = {
    tpm2.enable = true;
    sudo.enable = false;
    tpm2.pkcs11.enable = true;
    chromiumSuidSandbox.enable = true;
    virtualisation.flushL1DataCache = "always";
    protectKernelImage = true;
    lockKernelModules = true;

    doas = {
      enable = true;
      extraRules = [{
        groups = [ "wheel" ];
        persist = true;
      }];
    };
  };

  age.secrets = {
    services.file = ../secrets/services.age;
  };
}
