{ config, lib, pkgs, ... }:

{
  security = {
    doas.enable = true;
    tpm2.enable = true;
    sudo.enable = false;
    chromiumSuidSandbox.enable = true;
    doas.extraRules = [{ groups = [ "wheel" ]; noPass = true; }];
  };
}
