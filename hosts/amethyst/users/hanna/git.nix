{ config, lib, pkgs, ... }:

{
  programs.git = {
    enable = true;

    lfs.enable = true;
    userName = "hanna";
    userEmail = "me@hanna.lol";
    signing.key = "B38FD4F31BB1BCC8";
    signing.signByDefault = true;

    aliases = {
      co = "commit";
      pu = "push";
      pl = "pull";
      rt = "remote";
      tg = "tag";
      st = "stash";
      rb = "rebase";
      rs = "reset";
      cl = "clone";
      cr = "clone --recursive";
      pa = "push --atomic";
      rbi = "rebase --interactive";
      sc = "clone --depth=1";
    };

    extraConfig = {
      pull.rebase = true;
      push.default = "simple";
      init.defaultBranch = "main";
      rerere.enabled = true;
      submodule.recurse = true;
      core.autocrlf = false;
      core.editor = "hx";
      fetch.prune = true;
      lfs.locksverify = false;
    };
  };
}
