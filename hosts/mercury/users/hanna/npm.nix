{ config, lib, ... }:

let
  home = config.users.users.hanna.home;
in
lib.generators.toKeyValue {} {
  prefix = "${home}/.config/npm";
  cache = "${home}/.cache/npm";
  init-module = "${home}/.config/npm/config/npm-init.js";
  state-dir = "${home}/.local/state/pnpm-state";
  store-dir = "${home}/.local/share/pnpm-store";
  tmp = "${home}/.cache/npm";
}
