{ stdenv, fetchFromGitHub }:

stdenv.mkDerivation rec {
  name = "gnome-shell-extension-random-wallpaper-${version}";
  version = "2.4.1";

  src = fetchFromGitHub {
    owner = "ifl0w";
    repo = "RandomWallpaperGnome3";
    rev = "v${version}";
    sha256 = "0k1l08d28rk17gmzzk66948yh81d0qwnnx5vaxm0qxy7rwa90xf4";
  };

  uuid = "randomwallpaper@iflow.space";
  installPhase = ''
    mkdir -p $out/share/gnome-shell/extensions/${uuid}
    cp -r ./${uuid} $out/share/gnome-shell/extensions
  '';

  meta = with stdenv.lib; {
    description = "This extension fetches a random wallpaper from an 
online source and sets it as desktop background.";
    homepage = https://github.com/ifl0w/RandomWallpaperGnome3;
    license = licenses.mit;
  };
}
