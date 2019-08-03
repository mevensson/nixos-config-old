{ config, pkgs, ... }:

{
  # List services that you want to enable:
  services = {
    httpd = {
      enable = true;
      adminAddr = "mattias@evensson.eu";
      logPerVirtualHost = true;
    };
  };
}
