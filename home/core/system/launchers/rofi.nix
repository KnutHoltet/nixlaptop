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

      # theme = {
      # }; # theme

    }; # programs

    launcherCommand = ''${rofi}/bin/rofi -modes drun -show drun'';

  }; # config -> rofi.enable

}

