{ config, pkgs, ... }:

{
  # Confiure console
  console = {
    font = "Lat2-Terminus16";
    keyMap = "sv-latin1";
  };

  # Select internationalisation properties.
  i18n = {
    defaultLocale = "en_US.UTF-8";
  };

  # Set your time zone.
  time = {
    timeZone = "Europe/Stockholm";
  };
}
