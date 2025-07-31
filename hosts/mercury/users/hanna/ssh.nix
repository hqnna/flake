{ config, pkgs, lib, ... }:

let
  mkConfig = hosts:
    pkgs.writeText "config" (lib.concatStringsSep "\n\n" (map (host: ''
      host ${host.name}
        hostname ${host.hostname}
        identityfile ${host.identity}
        kexalgorithms ecdh-sha2-nistp256
        hostkeyalgorithms ssh-ed25519
        user ${host.user}
        port ${host.port}
    '') hosts));
in mkConfig [
  {
    name = "services";
    identity = "${config.users.users.hanna.home}/.ssh/id_ed25519";
    hostname = "192.168.1.1";
    user = "root";
    port = "22";
  }
]
