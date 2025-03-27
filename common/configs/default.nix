{ config, lib, pkgs, ... }:

{
	imports = [
  	./btop.nix
  	./fastfetch.nix
  	./hyfetch.nix
  	./kakoune.nix
  	./starship.nix
  	./lsd.nix
  	./xdg.nix
	];
}
