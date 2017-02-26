{ stdenv, lib, fetchurl

, alsaLib, dbus_glib, expat , gnome2, nss, x11, xlibs , dbus, cups, nspr
, atk, cairo, freetype, fontconfig, gdk_pixbuf, glib, pango, libgcrypt_1_5
, libcap, systemd
}:

stdenv.mkDerivation rec {
  name = "libcef3-1750";
  src = fetchurl {
    url    = "https://github.com/haskell-ui/cef3-raw/releases/download/1750/cef_binary_3.1750.1805_linux64.tar.bz2";
    sha256 = "0539c51490471abe52d170641bc0cadd214e998c887918d231accb160611ca4b";
  };

  phases = [ "unpackPhase" "installPhase" ];
  installPhase = ''
    mkdir -p $out/{bin,lib,include}
    mv Resources/* $out/bin/
    mv Release/libcef.so $out/lib/
    mv Release/*   $out/bin/
    mv include/*   $out/include/

    ln -s ${systemd.lib}/lib/libudev.so.1 $out/lib/libudev.so.0

    patchelf --set-rpath "$out/lib:$rpath" $out/lib/libcef.so
    patchelf \
      --set-interpreter $(cat $NIX_CC/nix-support/dynamic-linker) \
      --set-rpath "$out/bin:$apath" $out/bin/chrome-sandbox

    chmod 4755 $out/bin/chrome-sandbox
  '';

  dontStrip    = true;
  dontPatchELF = true;

  apath = lib.makeLibraryPath [ stdenv.glibc ];

  rpath = lib.makeLibraryPath [
    alsaLib dbus_glib expat
    gnome2.gtk nss x11 xlibs.libXrender
    xlibs.libXtst xlibs.libXi xlibs.libXcomposite xlibs.libXfixes
    xlibs.libXdamage xlibs.libXcursor xlibs.libXext xlibs.libXrandr
    xlibs.libXScrnSaver

    dbus cups
    nspr xlibs.libX11 atk cairo freetype fontconfig
    gdk_pixbuf glib pango gnome2.GConf stdenv.cc.cc

    libgcrypt_1_5 libcap
  ];
}
