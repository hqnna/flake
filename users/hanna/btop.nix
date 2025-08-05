{ lib, ... }:

lib.generators.toKeyValue {} {
  color_theme = "greyscale";
  theme_background = false;
  rounded_corners = false;
  log_level = "ERROR";
  update_ms = 1000;
  truecolor = true;
}
