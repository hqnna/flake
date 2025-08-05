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
│       │   ├── claude.age
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
│       │   ├── nvidia.nix
│       │   ├── security.nix
│       │   ├── settings.nix
│       │   ├── virt.nix
│       │   └── wsl.nix
│       └── config.nix
├── users
│   ├── hanna
│   │   ├── direnv
│   │   │   ├── cache.nix
│   │   │   └── config.nix
│   │   ├── btop.nix
│   │   ├── default.nix
│   │   ├── fastfetch.nix
│   │   ├── fish.nix
│   │   ├── git.nix
│   │   ├── helix.nix
│   │   ├── npm.nix
│   │   ├── ssh.nix
│   │   └── starship.nix
│   └── default.nix
├── flake.lock
└── flake.nix
```
