{ config, lib, pkgs, ... }:

{
  programs.helix = {
    enable = true;
    defaultEditor = true;

    settings = {
      theme = "rose_pine";

      editor = {
        mouse = false;
        scrolloff = 10;
        scroll-lines = 5;
        cursorline = true;
        lsp.enable = false;
        smart-tab.enable = false;
        auto-completion = false;
        auto-format = false;
        auto-info = false;

        cursor-shape = {
          normal = "bar";
          insert = "bar";
          select = "block";
        };

        indent-guides = {
          character = "▏";
          render = true;
        };
      };
    };
  };
}
