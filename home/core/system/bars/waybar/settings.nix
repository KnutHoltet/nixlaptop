{ config, pkgs, ...  }:
let
  timeZone = config.var.timeZone;
in
{
  programs.waybar.settings = {
    mainBar = {
      layer = "top";
      position = "top";
      height = 30;
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

      hyprland-language = {
        format = "{}";
        format-no = "NOB";
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

