{ pkgs, lib, config, ... }: {

  options = {
    wofi.enable =
      lib.mkEnableOption "Enables wofi";
  };

  config = lib.mkIf config.wofi.enable {

    home.packages = with pkgs; [ wofi-emoji ];

    programs.wofi = {
      enable = true;

      settings = {
        allow_markup = true;
        width = 450;
        show = "drun";
        prompt = "Apps";
        normal_window = true;
        layer = "top";
        term = "foot";
        height = "305px";
        orientation = "vertical";
        halign = "fill";
        line_wrap = "off";
        dynamic_lines = false;
        allow_images = true;
        image_size = 24;
        exec_search = false;
        hide_search = false;
        parse_search = false;
        insensitive = true;
        hide_scroll = true;
        no_actions = true;
        sort_order = "default";
        gtk_dark = true;
        filter_rate = 100;
        key_expand = "Tab";
        key_exit = "Escape";
      }; # settings
    }; # programs

  };

}

