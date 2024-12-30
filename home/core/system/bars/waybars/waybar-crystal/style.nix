{ config, ...  }: {


  programs.waybar = {
    style = ''
        window#waybar {
          background-color: #${config.colorScheme.colors.base00};
          color: #${config.colorScheme.colors.base01};
          border-bottom: none;
        }
        #workspaces {
          font-family: "Material Design Icons Desktop";
          font-size: 20px;
          background-color: #${config.colorScheme.colors.base02};
          margin : 4px 0;
          border-radius : 5px;
        }
        #workspaces button {
          font-size: 18px;
          background-color: transparent;
          color: #${config.colorScheme.colors.base03};
          transition: all 0.1s ease;
        }
        #workspaces button.focused {
          font-size: 18px;
          color: #${config.colorScheme.colors.base04};
        }
        #workspaces button.persistent {
          color: #${config.colorScheme.colors.base05};
          font-size: 12px;
        }
        #custom-launcher {
          background-color: #${config.colorScheme.colors.base06};
          color: #${config.colorScheme.colors.base07};
          margin : 4px 4.5px;
          padding : 5px 12px;
          font-size: 18px;
          border-radius : 5px;
        }
        #custom-power {
          color : #${config.colorScheme.colors.base08};
          background-color: #${config.colorscheme.colors.base09};
          margin : 4px 4.5px 4px 4.5px;
          padding : 5px 11px 5px 13px;
          border-radius : 5px;
        }

        #clock {
          background-color: #${config.colorscheme.colors.base0A};
          color: #${config.colorscheme.colors.base0B};
          margin : 4px 9px;
          padding : 5px 12px;
          border-radius : 5px;
        }
        
        #network {
          color : #${config.colorscheme.colors.base0C};
          background-color: #${config.colorscheme.colors.base0D};
          margin : 4px 0 4px 4.5px;
          padding : 5px 12px;
          border-radius : 5px 0 0 5px;
        }
        #battery {
          color : #${config.colorscheme.colors.base0E};
          background-color: #${config.colorscheme.colors.base0F};
          margin : 4px 0px;
          padding : 5px 12px;
          border-radius : 5px 0 0 5px;
        }
        #custom-swallow {
          background-color: #${config.colorscheme.colors.base0F};
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
}


