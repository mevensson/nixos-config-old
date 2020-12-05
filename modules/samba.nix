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
      avahi.extraServiceFiles = {
        smb = ''
          <?xml version="1.0" standalone='no'?>
          <!DOCTYPE service-group SYSTEM "avahi-service.dtd">
          <service-group>
            <name replace-wildcards="yes">SAMBA on %h</name>
            <service>
              <type>_smb._tcp</type>
              <port>445</port>  
            </service>
          </service-group>
        '';
      };
    };
  };
}
