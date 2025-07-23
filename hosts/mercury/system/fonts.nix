{ pkgs, ... }:

{
  fonts = {
    enableDefaultPackages = true;
    packages = with pkgs; [ inter twemoji-color-font ];

    fontconfig = {
      enable = true;
      allowBitmaps = false;
      allowType1 = false;
      antialias = true;

      hinting = {
        enable = true;
        autohint = true;
        style = "slight";
      };

      subpixel = {
        lcdfilter = "light";
        rgba = "rgb";
      };

      defaultFonts = {
        emoji = [ "Twitter Color Emoji" ];
        monospace = [ "DejaVu Sans Mono" ];
        sansSerif = [ "Inter" ];
        serif = [ "Inter" ];
      };
    };
  };
}
