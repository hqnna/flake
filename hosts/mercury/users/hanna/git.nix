{ lib, ... }:

lib.generators.toINI {} {
  init.defaultBranch = "main";
  push.default = "simple";
  pull.rebase = true;
  fetch.prune = true;

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
    signingkey = "B38FD4F31BB1BCC8";
  };
}
