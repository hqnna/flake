flake
![license](https://badge.hanna.lol/license/0BSD)
![activity](https://badge.hanna.lol/activity/flake)
================================================================================

My personal [NixOS](https://nixos.org) flake for all systems I manage with nix.

## File Structure

I organize my flake in a specific way to be easy to maintain and understand.

- `hosts` — per-system config files split into folders for maintainability.
  - `secrets` — age encrypted files containing secrets used in my systems.
  - `services` — service-specific config files for each service on a system.
  - `system` — system-specific config files (i.e. hardware, networking, etc).
- `users` — per-user config files that are shared across all systems.

```
flake
|-- hosts
|   `-- <name>
|       |-- secrets
|       |-- services
|       |-- system
|       `-- config.nix
|-- users
|   |-- <name>
|   |   `-- default.nix
|   `-- default.nix
|-- flake.lock
`-- flake.nix
```
