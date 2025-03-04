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
        theme = "GruvboxDark";
        keybind = [
          "ctrl+h=goto_split:left"
          "alt+l=goto_split:right"
        ];

        window-decoration = false; 


      }; # settings

    }; # programs.ghostty
  }; # config

}

