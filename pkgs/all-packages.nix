final: prev:
let
  callPackage = final.callPackage or (prev.lib.callPackageWith (prev // packages));
  packages = rec {
    python3 = prev.python3.override {
      self = python3;
      packageOverrides = import ./python/all-packages.nix;
    };
  };
in
  packages
