{ config, pkgs, ... }:

{
  networking = {
    firewall = {
      # Or disable the firewall altogether.
      enable = false;
      allowedTCPPorts = [ 80 139 445 32400 ];
      allowedUDPPorts = [ 137 138 ];
    };
  };
}
