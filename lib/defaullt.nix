{
  perSystem = {
    ...
  }: {
    lib.pythonPackageOverrides = import ../pkgs/python/all-packages.nix;
  };
}
