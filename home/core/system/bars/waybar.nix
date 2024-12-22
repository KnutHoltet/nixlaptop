{ pkgs, lib, config, ... }: {

  options = {
    waybar.enable =
      lib.mkEnableOption "Enables Waybar";
  };

  config = lib.mkIf config.waybar.enable {

    programs.waybar = {
      enable = true;
      systemd.enable = true;
      style = ''
        * {
          border: none;
          border-radius: 0;
          font-family: Source Code Pro;
        }
        window#waybar {
          background: #16191C;
          color: #AAB2BF;
        }
        #workspaces button {
          padding: 0 10px;
        }
      '';
    };
    
  
  };
 

}
