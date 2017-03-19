[![Linux Build Status][linux-build-icon]][linux-build]  [![Mac Build Status][mac-build-icon]][mac-build]  [![Windows Build Status][windows-build-icon]][windows-build]

Haskell bindings to [cef3][cef3].

## Installation

### Linux - Nix/NixOS

If you don't have nix:

```
curl https://nixos.org/nix/install | sh
```

Otherwise

```
nix-build default.nix
```

This will just build the bindings, if you rather do something useful
you should check the [cef3-raw-example][example] repo.

Beware:
It takes about 20min and ~800M ram to build it on my machine.
I will add this package to nixpkgs in the future so you will be able
to automatically download it prebuild from binary caches, but for now
beware.

### Windows, Mac
TODO...

---

Disclaimer: Big part of the current version of this bindings is based
on the work done by Daniel Austin [here][bindings-cef3].

[cef3]: https://bitbucket.org/chromiumembedded/cef
[example]: https://github.com/haskell-ui/cef3-raw-example
[bindings-cef3]: https://github.com/fluffynukeit/bindings-cef3

[linux-build-icon]: https://img.shields.io/travis/haskell-ui/cef3-raw/master.svg?label=Linux%20build
[linux-build]: https://travis-ci.org/haskell-ui/cef3-raw
[mac-build-icon]: https://img.shields.io/badge/Mac%20build-TODO-lightgrey.svg
[mac-build]: https://github.com/haskell-ui/cef3-raw-example
[windows-build-icon]: https://img.shields.io/appveyor/ci/haskell-ui/cef3-raw/master.svg?label=Windows%20build
[windows-build]: https://github.com/haskell-ui/cef3-raw-example
