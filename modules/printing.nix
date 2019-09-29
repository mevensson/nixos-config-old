{ config, pkgs, ... }:

{
  services = {
    # Enable Avahi service discovery demon
    avahi = {
      enable = true;
      nssmdns = true;
    };

    # Enable CUPS to print documents.
    printing = {
      enable = true;
      drivers = [ pkgs.hplip ];
    };
  };
}
