let
  hanna = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEST6MgqRSn0N9ResAQ6Alt0V02GJF3XWneEDeheuQVI";
  crystal = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIF+lZhqvEjNS4GY0d/AHnvjfJTi6y+PY8thrI6GsgA5u";
in {
  "wireguard.age".publicKeys = [ hanna crystal ];
}
