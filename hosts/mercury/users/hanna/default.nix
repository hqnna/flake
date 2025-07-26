{ pkgs, ... }@args:

{
  users.users.hanna = {
    home = "/home/hanna";
    extraGroups = [ "wheel" ];
    autoSubUidGidRange = true;
    isNormalUser = true;
    shell = pkgs.fish;

    # Necessary for Zed to connect
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEST6MgqRSn0N9ResAQ6Alt0V02GJF3XWneEDeheuQVI"
    ];

    packages = with pkgs; [
      fastfetch
      starship
      direnv
      unzip
      btop
    ];
  };

  hjem.users.hanna.files = {
    ".config/btop/btop.conf".text = import ./btop.nix args;
    ".config/direnv/direnvrc".source = import ./direnvrc.nix args;
    ".config/direnv/direnv.toml".source = import ./direnv.nix args;
    ".config/fastfetch/config.jsonc".text = import ./fastfetch.nix;
    ".config/helix/config.toml".source = import ./helix.nix args;
    ".config/starship.toml".source = import ./starship.nix args;
    ".config/fish/config.fish".source = import ./fish.nix args;
    ".config/git/config".text = import ./git.nix args;
    ".config/npm/npmrc".text = import ./npm.nix args;
  };
}
