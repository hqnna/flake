{ pkgs, ... }:

let
  toml = pkgs.formats.toml {};
in
toml.generate "starship.toml" {
  scan_timeout = 60;
  command_timeout = 3600;
  add_newline = false;

  format = "\${nix_shell}$directory$git_branch[λ](fg:8) ";

  directory = {
    format = "[$path](fg:4) ";
    truncate_to_repo = false;
  };

  git_branch = {
    format = "[$branch](fg:5) ";
  };

  nix_shell = {
    format = "[\\(](fg:8)[shell](fg:4)[\\)](fg:8) ";
  };
}
