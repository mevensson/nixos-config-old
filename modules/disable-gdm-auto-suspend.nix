{ config, pkgs, lib, ... }:     # disable-gdm-auto-suspend.nix

{
  assertions = [
    { assertion = config.services.xserver.displayManager.gdm.enable;
       message = "dont't include disable-gdm-auto-suspend.nix unless GDM is enabled";
    }
  ];

  programs.dconf.enable = true;
  programs.dconf.profiles.user = pkgs.writeText "dconf-user-profile" ''
    user-db:user
    system-db:local
  '';
  
  environment.etc."dconf/db/local.d/disable-auto-suspend".text = ''
    [org/gnome/settings-daemon/plugins/power]
    power-button-action='nothing'
    sleep-inactive-battery-type='nothing'
    sleep-inactive-ac-type='nothing'
  '';

}
