final: prev:
let
  modules = [
    "json-delta"
    "ips"
    "mercury-engine-data-structures"
    "open-dread-rando"
    "randovania-lupa"
  ];
  mapModule = module: {
    name = module;
    value = final.callPackage ./${module}.nix {};
  };
in
builtins.listToAttrs (builtins.map mapModule modules)
