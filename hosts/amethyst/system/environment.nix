{ config, lib, pkgs, ... }:

{
  programs = {
    fish.enable = true;
    fish.vendor.completions.enable = true;
    fish.vendor.functions.enable = true;
    fish.vendor.config.enable = true;
    gnupg.agent.enable = true;
    nix-ld.enable = true;
  };

  environment = {
    localBinInPath = true;
    memoryAllocator.provider = "scudo";
    defaultPackages = with pkgs; [ wget ];
  };
}
