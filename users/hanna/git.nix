{ config, lib, ... }:

let
  home = config.users.users.hanna.home;
in
lib.generators.toGitINI {
  init.defaultBranch = "main";
  push.default = "simple";
  pull.rebase = true;
  fetch.prune = true;

  push.autoSetupRemote = true;
  submodule.recurse = true;
  lfs.locksverify = false;
  commit.gpgsign = true;
  rerere.enabled = true;

  core = {
    autocrlf = false;
    editor = "hx";
  };

  user = {
    name = "hanna";
    email = "me@hanna.lol";
    signingkey = "E68958B151034FFB";
  };
}
