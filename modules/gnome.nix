{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
     gnome3.dconf-editor
     gnome3.gnome-tweaks
     gnome3.sushi
     gnomeExtensions.appindicator
     #gnomeExtensions.arc-menu
     gnomeExtensions.caffeine
     gnomeExtensions.dash-to-dock
     gnomeExtensions.gsconnect
     gnomeExtensions.impatience
     gnomeExtensions.mpris-indicator-button
     #gnomeExtensions.no-title-bar
     #gnomeExtensions.system-monitor
     firefox
     #variety
  ];

  #environment.variables = {
  #  G_MESSAGES_DEBUG = "all";
  #};

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
        debug = false;
      };
      desktopManager.gnome = {
        enable = true;
        debug = false;
        #extraGSettingsOverrides = ''
        #  [org.gnome.mutter]
        #    experimental-features=['scale-monitor-framebuffer']
        #'';
      };
    };
  };
}
