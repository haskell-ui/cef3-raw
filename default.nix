{ nixpkgs ? import <nixpkgs> {}, compiler ? "ghc801" }:
let libcef3 = with nixpkgs; callPackage ./libcef3.nix {};
    hpkgs = nixpkgs.haskell.packages.${compiler}.override {
      overrides = self: super: {
        cef3-raw = self.callPackage ./cef3-raw.nix { inherit libcef3; };
      };
    };
in hpkgs.cef3-raw
