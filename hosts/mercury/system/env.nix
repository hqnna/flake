{ pkgs, ... }:

{
  environment = {
    localBinInPath = true;
    memoryAllocator.provider = "mimalloc";
    defaultPackages = with pkgs; [ git wget helix ];
  };

  programs = {
    gnupg.agent.enable = true;
    nix-ld.enable = true;
    fish.enable = true;
  };
}
