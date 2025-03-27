{ inputs, shared, config, lib, pkgs, ... }:

{
  imports = [
    ../users/hanna
  ];

  home-manager.extraSpecialArgs = {
    inherit inputs;
    inherit shared;
  };
}
