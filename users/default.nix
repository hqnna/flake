{ lib, ... }:

lib.genAttrs
  (builtins.attrNames
    (lib.filterAttrs (n: v: v == "directory") (builtins.readDir ./.)))
  (name: import ./${name})
