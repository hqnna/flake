{ pkgs, ... }:

let
  toml = pkgs.formats.toml {};
in
toml.generate "starship.toml" {
  command_timeout = 3600;
  add_newline = false;
  scan_timeout = 60;

  format = "$nix_shell$username$hostname$directory$git_branch[\\]\\$](fg:8) ";

  nix_shell = {
    format = "[\\[](fg:8)[$state](fg:4)[\\]](fg:8)";
  };

  username = {
    format = "[\\[](fg:8)[$user](fg:4)";
    show_always = true;
  };

  hostname = {
    format = "[@](fg:8)[$hostname](fg:5)";
    ssh_only = false;
  };

  directory = {
    format = "[:](fg:8)[$path](fg:3)";
    truncate_to_repo = false;
  };

  git_branch = {
    format = "[@](fg:8)[$branch](fg:3)";
  };
}
