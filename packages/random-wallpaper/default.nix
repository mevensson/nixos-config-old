{ stdenv, fetchFromGitHub }:

stdenv.mkDerivation rec {
  name = "gnome-shell-extension-random-wallpaper-${version}";
  version = "2.4.1";

  src = fetchFromGitHub {
    owner = "mevensson";
    repo = "RandomWallpaperGnome3";
    rev = "f75e82cacb016770df6b37dacbddf46fb4b34bfc";
    sha256 = "0mk7nqri3wb8jj9pqjn79pzw2b3x487a59hsrdz52bp73c8m5qd9";
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
