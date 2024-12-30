{  ...  }: {


  programs.waybar = {
    style = ''
        window#waybar {
          background-color: #${background};
          color: #${foreground};
          border-bottom: none;
        }
        #workspaces {
          font-family: "Material Design Icons Desktop";
          font-size: 20px;
          background-color: #${mbg};
          margin : 4px 0;
          border-radius : 5px;
        }
        #workspaces button {
          font-size: 18px;
          background-color: transparent;
          color: #${color5};
          transition: all 0.1s ease;
        }
        #workspaces button.focused {
          font-size: 18px;
          color: #${color3};
        }
        #workspaces button.persistent {
          color: #${color1};
          font-size: 12px;
        }
        #custom-launcher {
          background-color: #${mbg};
          color: #${color4};
          margin : 4px 4.5px;
          padding : 5px 12px;
          font-size: 18px;
          border-radius : 5px;
        }
        #custom-power {
          color : #${color1};
          background-color: #${mbg};
          margin : 4px 4.5px 4px 4.5px;
          padding : 5px 11px 5px 13px;
          border-radius : 5px;
        }

        #clock {
          background-color: #${mbg};
          color: #${color7};
          margin : 4px 9px;
          padding : 5px 12px;
          border-radius : 5px;
        }
        
        #network {
          color : #${color7};
          background-color: #${mbg};
          margin : 4px 0 4px 4.5px;
          padding : 5px 12px;
          border-radius : 5px 0 0 5px;
        }
        #battery {
          color : #${color2};
          background-color: #${mbg};
          margin : 4px 0px;
          padding : 5px 12px;
          border-radius : 5px 0 0 5px;
        }
        #custom-swallow {
          background-color: #${mbg};
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


