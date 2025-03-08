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
        font-size = "16";
        keybind = [
          "ctrl+a=new_window"
        ];

        window-decoration = false; 


      }; # settings

    }; # programs.ghostty
  }; # config

}

