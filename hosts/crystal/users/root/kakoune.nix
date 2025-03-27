{ config, lib, pkgs, ... }:

{
  programs.kakoune = {
    enable = true;
    defaultEditor = true;

    config = {
      alignWithTabs = false;
      autoComplete = null;
      autoInfo = null;
      autoReload = "yes";
      colorScheme = "plain";
      incrementalSearch = true;
      showWhitespace.enable = false;
      wrapLines.enable = false;
      showMatching = true;
      indentWidth = 2;
      tabStop = 2;
    };
  };
}
