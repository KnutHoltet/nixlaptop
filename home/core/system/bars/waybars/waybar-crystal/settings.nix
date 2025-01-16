{ config, pkgs, lib, ...  }:
let
  timeZone = config.var.timeZone;
in
{
  config = lib.mkIf config.waybarCrystal.enable  {

  programs.waybar.settings = {
    mainBar = {
      height = 35;
      layer = "top";
      position = "top";
      tray = { spacing = 10; };
      output = [
        "eDP-1"
        "HDMI-A-1"
      ];

      modules-center = [ "clock" ];
      
      modules-left = [
        "custom/launcher"
        "hyprland/workspaces"
      ];

      modules-right = [
        "network"
        "battery"
        "custom/power"
        "tray"
      ];

      "hyprland/language" = {
        format = "{}";
        format-no = " NOB";
      };

      "hyprland/workspaces" = {
          on-click = "activate";
          all-outputs = true;
          format = "{icon}";
          disable-scroll = true;
          active-only = false;
          format-icons = {
            default = "󰊠 ";
            persistent = "󰊠 ";
            focused = "󰮯 ";
          };

          persistent_workspaces = {
            "1" = [ ];
            "2" = [ ];
            "3" = [ ];
            "4" = [ ];
            "5" = [ ];
          };
       };

       battery = {
          format = "{icon}";
          on-click = "eww open --toggle control";
          format-charging = " ";
          format-icons = [ "󰂎" "󰁺" "󰁻" "󰁼" "󰁽" "󰁾" "󰁿" "󰂀" "󰂁" "󰂂" "󰁹" ];
          format-plugged = "󰚦 ";
          states = {
            critical = 15;
            warning = 30;
          };
        
       };

       clock = {
         format = "{:%d %A %H:%M}";
         tooltip-format = "{:%Y-%m-%d | %H:%M}";
       };


       network = {
          interval = 1;
          on-click = "eww open --toggle control";
          format-disconnected = "󰤮 ";
          format-wifi = "󰤨 ";
       };
   
       # TODO: Integrate eww 
       "custom/launcher" = {
          # on-click = "eww open --toggle dash";
          on-click = "wofi --show drun";
          format = " ";

       };

       "custom/power" = {
         on-click = "powermenu &";
         format = " ";
       };


      
     

    };
  };
};
}

