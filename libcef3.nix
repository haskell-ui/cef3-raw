{ stdenv, lib, fetchurl

, alsaLib, dbus_glib, expat , gnome , nss, x11, xlibs , dbus, cups, nspr
, atk, cairo, freetype, fontconfig, gdk_pixbuf, glib, pango, libgcrypt_1_5
, libcap, systemd
}:

stdenv.mkDerivation {
  name = "libcef3-1750";
  src  = ./cef_binary_3.1750.1805_linux64;

  phases = [ "unpackPhase" "installPhase" ];
  installPhase = ''
    mkdir -p $out/bin
    mv Resources/* $out/bin/
    mv Release/*   $out/bin/

    ln -s ${systemd.lib}/lib/libudev.so.1 $out/lib/libudev.so.0

    patchelf --set-rpath "$out/lib:$rpath" $out/bin/libcef.so
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
    gnome.gtk nss x11 xlibs.libXrender
    xlibs.libXtst xlibs.libXi xlibs.libXcomposite xlibs.libXfixes
    xlibs.libXdamage xlibs.libXcursor xlibs.libXext xlibs.libXrandr
    xlibs.libXScrnSaver

    dbus cups
    nspr xlibs.libX11 atk cairo freetype fontconfig
    gdk_pixbuf glib pango gnome.GConf stdenv.cc.cc

    libgcrypt_1_5 libcap
  ];
}
