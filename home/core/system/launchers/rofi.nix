{ pkgs, lib, config, ... }: {

  options = {
    rofi.enable =
      lib.mkEnableOption "Enables rofi";
  };

  config = lib.mkIf config.rofi.enable {

    home.packages = with pkgs; [ jq ];

    programs.rofi = {
      enable = true;
      location = "center";
      plugins = [
        pkgs.rofi-calc
        pkgs.rofi-emoji
        pkgs.rofi-systemd
      ];

      extraConfig = {
        modi = "drun,filebrowser,window";
        show-icons = true;
        display-drun = "";
        display-run = "";
        display-filebrowser = "";
        display-window = "";
        drun-display-format = "{name}";
        window-format = "{w} · {c} · {t}";
      };

      theme = {
        "*" = {
          font = "JetBrains Mono Nerf Font 10";
          background = "#231419";
          background-alt = "#2D1E23";
          foreground = "#FFFFFF";
          selected = "#426647";
          active = "#2E3F34";
          urgent = "#D08261";
        };

        "#window" = {
          transparency = "real";
          anchor = "center";
          fullscreen = false;
          widt = "600px";
          x-offset = "0px";
          y-offset = "0px";
          enabled = true;
          
          border-radius = "20px";
          cursor = "default";
          background-color = "@background";
        };



      }; # theme

    }; # programs


  }; # config -> rofi.enable

}

