{ config, pkgs, ... }:

let
  random-wallpaper = pkgs.callPackage ../packages/random-wallpaper {};
in
{
  environment.systemPackages = with pkgs; [
     gnome3.gnome-tweaks
     gnomeExtensions.dash-to-dock
     firefox
     random-wallpaper
  ];

  fonts.fonts = [ pkgs.corefonts ];

  services = {
    # Enable the X11 windowing system.
    xserver = {
      enable = true;
      layout = "se";

      # Enable touchpad support.
      libinput = {
        enable = true;
      };

      # Enable the GNOME Desktop Environment.
      displayManager.gdm = {
        enable = true;
        wayland = true;
        debug = true;
      };
      desktopManager.gnome3 = {
        enable = true;
      };
    };
  };
}
