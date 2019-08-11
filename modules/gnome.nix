{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
     gnome3.gnome-tweaks
     gnomeExtensions.dash-to-dock
     firefox
  ];

  fonts.fonts = [ pkgs.corefonts ];

  services = {
    # Gnome Terminal Service
    gnome3 = {
      gnome-terminal-server = {
        enable = true;
      };

      chrome-gnome-shell = {
        enable = true;
      };
    };

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
        wayland = false;
      };
      desktopManager.gnome3 = {
        enable = true;
      };
    };
  };
}
