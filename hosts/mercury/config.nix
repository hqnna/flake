{ users, ... }:

{
  imports = [
    users.hanna

    # Service Configs
    ./services/openssh.nix
    ./services/wireguard.nix

    # System Configs
    ./system/security.nix
    ./system/settings.nix
    ./system/network.nix
    ./system/locale.nix
    ./system/nvidia.nix
    ./system/fonts.nix
    ./system/docs.nix
    ./system/virt.nix
    ./system/env.nix
    ./system/wsl.nix
  ];
}
