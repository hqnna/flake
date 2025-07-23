{ config, pkgs, lib, ... }:

let
  toml = pkgs.formats.toml {};
in
toml.generate "direnv.toml" {
  global = {
    bash_path = "${pkgs.bash}/bin/bash";
    hide_env_diff = true;
    disable_stdin = true;
    strict_env = true;
    warn_timeout = 0;
  };

  whitelist.prefix = [
    "${config.users.users.hanna.home}/dev"
  ];
}
