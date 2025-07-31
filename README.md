NixOS Flake
![license](https://badge.hanna.lol/license/0BSD)
![activity](https://badge.hanna.lol/activity/hanna/flake)
================================================================================

My personal [NixOS](https://nixos.org) flake for all of the machines I manage.

```
flake
├── hosts
│   └── mercury
│       ├── secrets
│       │   └── services.age
│       ├── services
│       │   ├── openssh.nix
│       │   └── wireguard.nix
│       ├── system
│       │   ├── docs.env
│       │   ├── env.nix
│       │   ├── fonts.nix
│       │   ├── locale.nix
│       │   ├── network.nix
│       │   ├── security.nix
│       │   ├── settings.nix
│       │   ├── users.nix
│       │   ├── virt.nix
│       │   └── wsl.nix
│       ├── users
│       │   └── hanna
│       │       ├── direnv
│       │       │   ├── config.nix
│       │       │   └── cache.nix
│       │       ├── btop.nix
│       │       ├── default.nix
│       │       ├── fastfetch.nix
│       │       ├── fish.nix
│       │       ├── git.nix
│       │       ├── helix.nix
│       │       ├── npm.nix
│       │       └── starship.nix
│       └── config.nix
├── flake.lock
└── flake.nix
```
