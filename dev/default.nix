{
  perSystem = {
    config,
    pkgs,
    ...
  }: {
    devShells.default = pkgs.mkShell {
      packages = [
        (config.packages.python3.withPackages (pypi: with pypi; [
          randovania
        ]))
      ];
    };
  };
}
