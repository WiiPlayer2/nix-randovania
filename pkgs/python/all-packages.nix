final: prev: with final; {
  json-delta = callPackage ./json-delta.nix;
  ips = callPackage ./ips.nix;
  mercury-engine-data-structures = callPackage ./mercury-engine-data-structures.nix;
  open-dread-rando = callPackage ./open-dread-rando.nix;
  randovania-lupa = callPackage ./randovania-lupa.nix;
}
