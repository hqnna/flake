Flake
![license](https://img.shields.io/badge/license-0BSD-blue?style=flat-square)
![activity](https://img.shields.io/gitea/last-commit/hanna/flake?gitea_url=https%3A%2F%2Fcodeberg.org&style=flat-square)
================================================================================

My flake is setup with an organized structure to keep things easy to maintain.

- **Secrets** → Secrets encrypted with [agenix](https://github.com/ryantm/agenix),
that are sometimes used across multiple hosts.
- **Shared** → Components like configs or services that are being used across 
multiple hosts.
- **Hosts** → Individual configurations for each one of my machines, split into
separate folders.
  - **System** → Configs for machine specific things such as hardware, bootloader, etc.
  - **Services** → Configs for services, things like podman, openssh, ollama, and more.
  - **Users** → Configs for user-specific things and home-manager configuration stuff.

As for what each host is, a rough description of all of my machines can be seen below.

- **Amethyst** → My desktop WSL2 install of NixOS, that I mainly use for development.
- **Crystal** → My [Hetzner](https://hetzner.com) ARM server that I primarily use
for testing and hosting stuff.

This is a very rough overview, and I recommend actually browing the files.
