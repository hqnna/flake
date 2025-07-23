{ pkgs, ... }:

{
  environment = {
    localBinInPath = true;
    memoryAllocator.provider = "mimalloc";
    defaultPackages = with pkgs; [ git wget unzip helix ];
  };

  programs = {
    gnupg.agent.enable = true;
    nix-ld.enable = true;
    fish.enable = true;
  };
}
