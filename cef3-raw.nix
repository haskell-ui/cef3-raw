{ mkDerivation, libcef3, base, bindings-DSL, gtk2, stdenv }:
mkDerivation {
  pname = "cef3-raw";
  version = "0.1.0";
  src = ./.;
  isLibrary = true;
  buildDepends = [ libcef3 ];
  libraryHaskellDepends = [ base bindings-DSL ];
  libraryPkgconfigDepends = [ gtk2 ];
  configureFlags = [
    "--extra-include-dirs=${libcef3}/"
    "--extra-include-dirs=${libcef3}/include/"
    "--extra-include-dirs=${libcef3}/include/capi/"
  ];
  passthru = { inherit libcef3; };
  description = "Raw CEF3 bindings";
  license = stdenv.lib.licenses.bsd3;
}
