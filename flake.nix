{
  description = "A very basic flake";

  inputs = {
    # nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs = inputs:
    inputs.flake-parts.lib.mkFlake
    { inherit inputs; }
    {
      imports = [
        ./pkgs
        ./dev
        ./lib
      ];

      systems = [
        "x86_64-linux"
      ];
    };
}
