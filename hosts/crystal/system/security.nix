{ config, lib, pkgs, ... }:

{
  security = {
    doas.enable = true;
    sudo.enable = false;
    lockKernelModules = true;
    protectKernelImage = true;
    unprivilegedUsernsClone = true;
    virtualisation.flushL1DataCache = "always";
    doas.extraRules = [{ groups = [ "wheel" ]; persist = true; }];
  };

  age.secrets = {
    wireguard.file = ../../../secrets/wireguard.age;
  };
}
