{
  description = "RDI flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-21.11";
    futils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, futils, ... }:
    futils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
        packages = {
          slides = pkgs.callPackage ./slides { };
        };
      in
      {
        defaultPackage = self.packages.${system}.slides;
        inherit packages;
      }
    )
  ;
}
