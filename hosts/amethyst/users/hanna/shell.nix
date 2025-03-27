{ config, lib, pkgs, ... }:

{
  programs.fish = {
    enable = true;

    shellAliases = {
      cat = "${pkgs.bat}/bin/bat";
    };

    functions = {
      hx.body = ''
        ${pkgs.helix}/bin/hx $argv[1]
        printf '\033[5 q'
      '';
    };

    shellInit = ''
    	set -U fish_greeting
    	set -U windows /mnt/c/Users/Hanna
    
    	set -Ux XDG_DATA_HOME ${config.xdg.dataHome}
    	set -Ux XDG_STATE_HOME ${config.xdg.stateHome}
    	set -Ux XDG_CONFIG_HOME ${config.xdg.configHome}
    	set -Ux XDG_CACHE_HOME ${config.xdg.cacheHome}

    	set -Ux NPM_CONFIG_USERCONFIG ${config.xdg.configHome}/npm/npmrc
    	set -Ux NODE_REPL_HISTORY ${config.xdg.stateHome}/node_history
    	set -Ux SQLITE_HISTORY ${config.xdg.stateHome}/sqlite_history
    	set -Ux LESSHISTFILE ${config.xdg.stateHome}/less_history
    	set -Ux CUDA_CACHE_PATH ${config.xdg.cacheHome}/cuda
    	set -Ux GNUPGHOME ${config.xdg.dataHome}/gnupg
    	set -Ux GOPATH ${config.xdg.dataHome}/golang
    	set -Ux HEX_HOME ${config.xdg.dataHome}/hex
    	set -Ux MIX_HOME ${config.xdg.dataHome}/mix

    	set -Ux PODMAN_IGNORE_CGROUPSV1_WARNING 1
    	set -Ux COLORTERM truecolor
    	set -Ux EDITOR hx
    '';
  };
}
