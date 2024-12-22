{ config, pkgs, ...  }:
let
  timeZone = config.var.timeZone;
in
{
  programs.waybar.settings = {
    mainBar = {
      layer = "bottom";
      position = "bottom";
      height = 41;
      mod = "dock";
      exclusive = true;
      gtk-layer-shell = true;
      margin-bottom = -1;
      passthrough = false;
      output = [
        "eDP-1"
        "HDMI-A-1"
      ];
      
      modules-left = [
        "custom/os_button"
        "hyprland/workspaces"
        "wlr/taskbar"
      ];

      modules-right = [
        "cpu"
        "temperature"
        "memory"
        "disk"
        "tray"
        "pulseaudio"
        "network"
        "battery"
        "hyprland/language"
        "clock"
      ];

      "hyprland/language" = {
        format = "{}";
        format-no = "NOB";
      };

      "hyprland/workspaces" = {
        icon-size = 32;
        spacing = 16;
        on-scroll-up = "hyprctl dispatch workspace r+1";
        on-scroll-down = "hyprctl dispatch workspace r-1";
      };
      
      "custom/os_button" = {
        format = "${(import ../. {}).logo}";
        on-click = "wofi --show drun";
        tooltip = false;
      };

      battery = {
        timezone = "${timeZone}";
        format = "{capacity}% {icon}";
        format-alt = "{time} {icon}";
        format-charging = "{capacity}% lader";
      };

      clock = {
        format-alt = "{:%Y-%m-%d}";
        tooltip-format = "{:%Y-%m-%d | %H:%M}";
      };

      cpu = {
        format = "{usage}";
        tooltip = false;
      };
      
      network = {
        interval = 1;
        format-alt = "{ifname}: {ipaddr}/{cidr}";
        format-disconnected = "Disconnected";
        format-ethernet = "{ifname}: {ipaddr}/{cidr}";
        format-linked = "{ifname} (No IP)";
        format-wifi = "{essid} ({signalStrength}%)";
      };


    };
  };
}

