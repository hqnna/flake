{ config, lib, pkgs, ... }:

{
  programs.starship = {
    enable = true;
    enableZshIntegration = true;

    settings = {
      scan_timeout = 60;
      command_timeout = 3600;
      add_newline = false;

      format = "$nix_shell$hostname$directory$git_branch\${custom.jj} ";

      nix_shell = {
        format = "[](fg:#26233a)[󰜗 $state](bg:#26233a fg:#9ccfd8)[](fg:#26233a) ";
      };

      hostname = {
        format = "[](fg:#26233a)[ $hostname](bg:#26233a fg:#eb6f92)[](fg:#26233a) ";
      };

      directory = {
        format = "[](fg:#26233a)[󰉋 $path](bg:#26233a fg:#ebbcba)[](fg:#26233a)";
        truncate_to_repo = false;
      };

      git_branch = {
        format = " [](fg:#26233a)[󰘬 $branch](bg:#26233a fg:#c4a7e7)[](fg:#26233a)";
      };

      custom.jj = {
        format = " [](fg:#26233a)[󰅐 $output](bg:#26233a fg:#c4a7e7)[](fg:#26233a)";
        command = "jj log -r@ -n1 --ignore-working-copy --no-graph --color never -T 'change_id.short(7)'";
        when = "jj root";
      };
    };
  };
}
