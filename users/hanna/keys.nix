{ config, pkgs, lib, ... }:

let
  mkConfig = keys:
    pkgs.writeText "keys" (lib.concatStringsSep "\n" (map (key: ''
      ${key.email} ${key.type} ${key.content}
    '') keys));
in mkConfig [
  {
    type = "ssh-ed25519";
    email = "me@hanna.lol";
    content = "AAAAC3NzaC1lZDI1NTE5AAAAIEST6MgqRSn0N9ResAQ6Alt0V02GJF3XWneEDeheuQVI";
  }
]
