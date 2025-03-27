{ config, lib, pkgs, ... }:

{
  security = {
    tpm2.enable = true;
    sudo.enable = false;
    chromiumSuidSandbox.enable = true;

    doas = {
      enable = true;
      extraRules = [{
        groups = [ "wheel" ];
        keepEnv = true;
        noPass = true;
      }];
    };
  };
}
