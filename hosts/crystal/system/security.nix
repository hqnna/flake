{ config, lib, pkgs, ... }:

{
  security = {
    sudo.enable = false;
    lockKernelModules = true;
    protectKernelImage = true;
    unprivilegedUsernsClone = true;
    virtualisation.flushL1DataCache = "always";

    doas = {
      enable = true;
      extraRules = [{
        groups = [ "wheel" ];
        keepEnv = true;
        persist = true;
      }];
    };
  };

  age.secrets = {
    wireguard.file = ../../../secrets/wireguard.age;
  };
}
