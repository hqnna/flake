{ config, lib, pkgs, ... }:

{
  programs.starship = {
    enable = true;
    enableZshIntegration = true;

    settings = {
      format = "$nix_shell[](234)$directory[](fg:234 bg:238)$git_branch[](fg:238 bg:242)\${custom.jj}[](242) ";
      
      scan_timeout = 60;
      command_timeout = 3600;
      add_newline = false;

      nix_shell = {
        format = "[](234)[ shell](fg:255 bg:234)[](234) ";
      };

      directory = {
        truncate_to_repo = false;
        format = "[󰉋 $path ](bg:234 fg:255)";
      };

      git_branch = {
        format = "[ 󰘬 $branch ](bg:238 fg:255)";
      };

      custom.jj = {
        format = "[ 󰅐 $output ](bg:242 fg:255)";
        command = "jj log -r@ -n1 --ignore-working-copy --no-graph --color never -T 'change_id.short(7)'";
        when = "jj root";
      };
    };
  };
}
