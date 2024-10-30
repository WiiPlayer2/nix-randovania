final: prev:
let
  modules = [
    "json-delta"
    "ips"
    "mercury-engine-data-structures"
    "open-dread-rando"
    "randovania-lupa"
    "randovania"
    "pyqt-distutils"
    "randovania-scm-version-schema"
  ];
  mapModule = module: {
    name = module;
    value = final.callPackage ./${module}.nix {};
  };
in
builtins.listToAttrs (builtins.map mapModule modules)
