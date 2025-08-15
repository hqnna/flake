{ config, pkgs, lib, ... }@args:

{
  users.users.hanna = {
    home = "/home/hanna";
    extraGroups = [ "wheel" ];
    autoSubUidGidRange = true;
    isNormalUser = true;
    shell = pkgs.fish;

    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEST6MgqRSn0N9ResAQ6Alt0V02GJF3XWneEDeheuQVI"
    ];

    packages = with pkgs; [
      fastfetch
      starship
      btop
    ] ++ lib.optionals (config ? wsl) [
      nur.repos.charmbracelet.crush
      direnv
    ];
  };

  hjem.users.hanna.files = {
    ".config/btop/btop.conf".text = import ./btop.nix args;
    ".config/fastfetch/config.jsonc".text = import ./fastfetch.nix;
    ".config/helix/config.toml".source = import ./helix.nix args;
    ".config/starship.toml".source = import ./starship.nix args;
    ".config/fish/config.fish".source = import ./fish.nix args;
  } // lib.optionalAttrs (config ? wsl) {
    ".config/direnv/direnv.toml".source = import ./direnv/config.nix args;
    ".config/direnv/direnvrc".source = import ./direnv/cache.nix args;
    ".config/git/config".text = import ./git.nix args;
    ".config/npm/npmrc".text = import ./npm.nix args;
    ".ssh/config".source = import ./ssh.nix args;
  };
}
