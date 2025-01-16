{ config, lib, ...  }: {


  config = lib.mkIf config.waybarCrystal.enable {
  
  programs.waybar = {
    style = ''
        window#waybar {
          background-color: #${config.stylix.base16Scheme.base00};
          color: #${config.stylix.base16Scheme.base01};
          border-bottom: none;
        }
        #workspaces {
          font-family: "Material Design Icons Desktop";
          font-size: 20px;
          background-color: #${config.stylix.base16Scheme.base02};
          margin : 4px 0;
          border-radius : 5px;
        }
        #workspaces button {
          font-size: 18px;
          background-color: transparent;
          color: #${config.stylix.base16Scheme.base03};
          transition: all 0.1s ease;
        }
        #workspaces button.focused {
          font-size: 18px;
          color: #${config.stylix.base16Scheme.base04};
        }
        #workspaces button.persistent {
          color: #${config.stylix.base16Scheme.base05};
          font-size: 12px;
        }
        #custom-launcher {
          background-color: #${config.stylix.base16Scheme.base06};
          color: #${config.stylix.base16Scheme.base07};
          margin : 4px 4.5px;
          padding : 5px 12px;
          font-size: 18px;
          border-radius : 5px;
        }
        #custom-power {
          color : #${config.stylix.base16Scheme.base08};
          background-color: #${config.stylix.base16Scheme.base09};
          margin : 4px 4.5px 4px 4.5px;
          padding : 5px 11px 5px 13px;
          border-radius : 5px;
        }

        #clock {
          background-color: #${config.stylix.base16Scheme.base0A};
          color: #${config.stylix.base16Scheme.base0B};
          margin : 4px 9px;
          padding : 5px 12px;
          border-radius : 5px;
        }
        
        #network {
          color : #${config.stylix.base16Scheme.base0C};
          background-color: #${config.stylix.base16Scheme.base0D};
          margin : 4px 0 4px 4.5px;
          padding : 5px 12px;
          border-radius : 5px 0 0 5px;
        }
        #battery {
          color : #${config.stylix.base16Scheme.base0E};
          background-color: #${config.stylix.base16Scheme.base0F};
          margin : 4px 0px;
          padding : 5px 12px;
          border-radius : 5px 0 0 5px;
        }
        #custom-swallow {
          background-color: #${config.stylix.base16Scheme.base0F};
          margin : 4px 4.5px;
          padding : 5px 12px;
          border-radius : 5px;
        }
        * {
          font-size: 16px;
          min-height: 0;
          font-family: "Iosevka Nerd Font", "Material Design Icons Desktop";
        } 
    '';
  };
};
}


