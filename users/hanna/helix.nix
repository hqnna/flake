{ pkgs, ... }:

let
  toml = pkgs.formats.toml {};
in
toml.generate "config.toml" {
  theme = "base16_transparent";

  editor = {
    auto-info = false;
    true-color = true;
    auto-format = true;
    path-completion = true;
    auto-completion = false;
    gutters = [ "line-numbers" "spacer" ];
    continue-comments = true;
    line-number = "absolute";
    bufferline = "multiple";
    scroll-lines = 2;
    scrolloff = 10;
    mouse = true;
  };

  editor.cursor-shape = {
    normal = "bar";
    insert = "bar";
    select = "block";
  };

  editor.indent-guides = {
    character = "▏";
    render = true;
  };

  editor.smart-tab = {
    enable = false;
  };

  editor.lsp = {
    enable = false;
  };
}
