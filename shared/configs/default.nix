{ config, lib, pkgs, ... }:

{
	imports = [
  	./btop.nix
  	./fastfetch.nix
  	./hyfetch.nix
  	./starship.nix
  	./helix.nix
		./bat.nix
  	./lsd.nix
  	./xdg.nix
	];
}
