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

      modules-right = [
        "pulseaudio"
        "network"
        "cpu"
        "memory"
        "temperature"
        "clock"
      ];

      battery = {
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


    };
  };
}

