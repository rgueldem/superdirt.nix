{
  description = "superdirt";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-23.11";
    tidalcycles.url = "github:mitchmindtree/tidalcycles.nix";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, flake-utils, nixpkgs, tidalcycles }:
  flake-utils.lib.eachDefaultSystem (system:
  let pkgs = nixpkgs.legacyPackages.${system}; in {
    packages.default = pkgs.callPackage ./. {
      superdirt = tidalcycles.packages.${system}.superdirt;
      superdirt-start-sc = tidalcycles.packages.${system}.superdirt-start-sc;
    };
  });
}
