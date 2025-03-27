Flake
![license](https://img.shields.io/badge/license-0BSD-blue)
![activity](https://img.shields.io/gitea/last-commit/hanna/flake?gitea_url=https%3A%2F%2Fcodeberg.org)
================================================================================

My flake is setup with an organized structure to keep things easy to maintain.

## Folder Structure

- **Secrets** → Secrets encrypted with [agenix](https://github.com/ryantm/agenix),
that are sometimes used across multiple hosts.
- **Shared** → Components like configs or services that are being used across
multiple hosts.
- **Hosts** → Individual configurations for each one of my machines, split into
separate folders.
  - **System** → Configs for machine specific things such as hardware, bootloader, etc.
  - **Services** → Configs for services, things like podman, openssh, ollama, and more.
  - **Users** → Configs for user-specific things and home-manager configuration stuff.

## Host Descriptions

- **Amethyst** → My desktop WSL2 install of NixOS, that I mainly use for development.
- **Crystal** → My [Hetzner](https://hetzner.com) VPS, that is primarily used for testing 
and hosting stuff.
