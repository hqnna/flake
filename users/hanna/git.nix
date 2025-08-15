{ config, lib, ... }:

let
  home = config.users.users.hanna.home;
in
lib.generators.toINI {} {
  init.defaultBranch = "main";
  push.default = "simple";
  pull.rebase = true;
  fetch.prune = true;

  push.autoSetupRemote = true;
  submodule.recurse = true;
  lfs.locksverify = false;
  commit.gpgsign = true;
  rerere.enabled = true;

  gpg = {
    format = "ssh";
    ssh.allowedSignersFile = "${home}/.config/git/keys";
  };

  core = {
    autocrlf = false;
    editor = "hx";
  };

  user = {
    name = "hanna";
    email = "me@hanna.lol";
    signingkey = "${home}/.ssh/id_ed25519.pub";
  };
}
