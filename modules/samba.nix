{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
     samba
  ];

  services = {
    samba = {
      enable = true;
      enableNmbd = true;
      nsswins = true;
      extraConfig = ''
        workgroup = EVENSSON
      '';
      shares = {
        movies = {
          browseable = "yes";
          comment = "Movies";
          path = "/media/movies";
        }; 
      };
    };
  };
}
