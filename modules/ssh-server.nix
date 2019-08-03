{ config, pkgs, ... }:

{
  services = {
    # Enable the OpenSSH daemon.
    openssh = {
      enable = true;
    };
  };
}
