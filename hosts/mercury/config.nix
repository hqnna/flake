{
  imports = [
    ./services/openssh.nix
    ./system/security.nix
    ./system/settings.nix
    ./system/network.nix
    ./system/locale.nix
    ./system/fonts.nix
    ./system/users.nix
    ./system/docs.nix
    ./system/virt.nix
    ./system/env.nix
    ./system/wsl.nix
  ];
}
