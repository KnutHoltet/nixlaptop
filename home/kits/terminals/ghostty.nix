{ pkgs, lib, config, ... }: {

  options = {
    ghostty.enable =
      lib.mkEnableOption "Enables Ghostty terminal";
  };


  config = lib.mkIf config.ghostty.enable {
    # home.packages = with pkgs; [ ghostty ];

    programs.ghostty = {
      enable = true;
      settings = {
        theme = "Dracula";
        font-size = "14";
        keybind = [
        ];

        window-decoration = false; 
        window-inherit-working-directory = true;
        window-theme = "dark";
        window-save-state = "always";

        mouse-hide-while-typing = true;
        copy-on-select = true;

        background-opacity = 0.9;
        font-family = "JetBrainsMono Nerd Font";

        cursor-style = "block";

        adw-toolbar-style = "raised";







      }; # settings

    }; # programs.ghostty
  }; # config

}

