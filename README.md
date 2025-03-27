Flake
![license](https://img.shields.io/badge/license-0BSD-blue?style=flat-square)
![activity](https://img.shields.io/gitea/last-commit/hanna/flake?gitea_url=https%3A%2F%2Fcodeberg.org&style=flat-square)
================================================================================

This repository contains the [NixOS](https://nixos.org) flake for my machines.

## Directory and File Structure

My flake is setup in an organized file structure to keep things understandable.

- **Common** → Contains shared user and service config files.
- **Secrets** → Contains encrypted secrets used across my machines.
- **System** → Contains configuration files relating to the nixos system.
- **Services** → Contains configuration files relating to system services.
- **Users** → Contains user-specific configuration files and directories.

Below you can see an ASCII file tree of how my flake is organized at a glance,
and all files in it.

```
flake
├── flake.nix
├── flake.lock
├── secrets/
│   └── wireguard.age
├── shared/
│   ├── services/
│   │   ├── podman.nix
│   │   └── default.nix
│   └── configs/
│       ├── btop.nix
│       ├── default.nix
│       ├── fastfetch.nix
│       ├── starship.nix
│       ├── hyfetch.nix
│       ├── kakoune.nix
│       ├── lsd.nix
│       └── xdg.nix
└── hosts/
    ├── amethyst/
    │   ├── system/
    │   │   ├── environment.nix
    │   │   ├── locale.nix
    │   │   ├── networking.nix
    │   │   ├── security.nix
    │   │   ├── settings.nix
    │   │   ├── users.nix
    │   │   └── wsl.nix
    │   ├── users/
    │   │   └── hanna/
    │   │       ├── overlays/
    │   │       │   └── cloudflared.nix
    │   │       ├── default.nix
    │   │       ├── direnv.nix
    │   │       ├── git.nix
    │   │       ├── jj.nix
    │   │       ├── nixpkgs.nix
    │   │       ├── npm.nix
    │   │       ├── shell.nix
    │   │       └── ssh.nix
    │   └── config.nix
    └── crystal/
        ├── system/
        │   ├── boot.nix
        │   ├── environment.nix
        │   ├── hardware.nix
        │   ├── locale.nix
        │   ├── motd.nix
        │   ├── networking.nix
        │   ├── security.nix
        │   ├── settings.nix
        │   └── users.nix
        ├── services/
        │   ├── wireguard.nix
        │   ├── openssh.nix
        │   └── zram.nix
        ├── users/
        │   └── root/
        │       ├── default.nix
        │       └── shell.nix
        └── config.nix
```
