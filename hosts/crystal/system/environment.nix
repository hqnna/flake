{ config, lib, pkgs, ... }:

{
  programs = {
    fish.enable = true;
    fish.vendor.completions.enable = true;
    fish.vendor.functions.enable = true;
    fish.vendor.config.enable = true;
  };

  users.defaultUserShell = pkgs.fish;

  environment = {
    localBinInPath = true;
    memoryAllocator.provider = "graphene-hardened-light";
    defaultPackages = with pkgs; [];
  };
}
