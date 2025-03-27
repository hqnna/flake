{ config, lib, pkgs, ... }:

{
  programs.fish = {
    enable = true;

    shellInit = ''
    	set -U fish_greeting

    	set -Ux XDG_DATA_HOME ${config.xdg.dataHome}
    	set -Ux XDG_STATE_HOME ${config.xdg.stateHome}
    	set -Ux XDG_CONFIG_HOME ${config.xdg.configHome}
    	set -Ux XDG_CACHE_HOME ${config.xdg.cacheHome}

    	set -Ux LESSHISTFILE ${config.xdg.stateHome}/less_history
    	set -Ux PODMAN_IGNORE_CGROUPSV1_WARNING 1
    	set -Ux COLORTERM truecolor
    	set -Ux EDITOR kak
    '';

    shellAliases = {
      cat = "${pkgs.bat}/bin/bat";
    };
  };
}
