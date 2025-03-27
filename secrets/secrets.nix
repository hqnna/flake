let
  hanna = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEST6MgqRSn0N9ResAQ6Alt0V02GJF3XWneEDeheuQVI";
  crystal = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKnCWcC9Dinn1nC3uIDKJ/mLTkQ0+jSJQYejyDH8e9iN";
in {
  "wireguard.age".publicKeys = [ hanna crystal ];
}
