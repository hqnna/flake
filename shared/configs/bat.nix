{ config, lib, pkgs, ... }:

{
  programs.bat = {
    enable = true;

    config = {
      theme = "Rose-Pine";
    };

    themes = {
      Rose-Pine = {
        src = pkgs.fetchFromGitHub {
          owner = "rose-pine";
          repo = "tm-theme";
          rev = "45061dc3fda6bd2126305df8fd6c81ef5a0f9c27";
          hash = "sha256-N68TUiNQkyVdgEFQ4EH1PpSAjHCsavha7moXHUg89/w=";
        };

        file = "dist/themes/rose-pine.tmTheme";
      };
    };
  };
}
