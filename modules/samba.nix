{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
     samba
  ];

  services = {
    samba = {
      enable = true;
      enableNmbd = true;
      shares = {
        movies = {
          browseable = "yes";
          comment = "Movies";
          path = "/media/movies";
        }; 
      };
      extraConfig = ''
        workgroup = EVENSSON
      '';
    };
  };
}
