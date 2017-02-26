[![Build Status][travis-icon]][travis]
# About

Haskell bindings to [cef3][cef3].

## Installation

### Linux - Nix/NixOS

If you don't have nix:
> curl https://nixos.org/nix/install | sh

Otherwise
> nix-build default.nix

This will just build the bindings, if you rather do something useful
you should check the [cef3-raw-example][example] repo.

Beware:
It takes about 20min and ~800M ram to build it on my machine.
I will add this package to nixpkgs in the future so you will be able
to automatically download it prebuild from binary caches, but for now
beware.

### Windows, Mac
TODO...

[cef]: https://bitbucket.org/chromiumembedded/cef
[example]: https://github.com/haskell-ui/cef3-raw-example
[travis-icon]: https://travis-ci.org/haskell-ui/cef3-raw.svg?branch=master
[travis]: https://travis-ci.org/haskell-ui/cef3-raw
