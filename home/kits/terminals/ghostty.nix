{ pkgs, lib, config, ... }: {

  options = {
    ghostty.enable =
      lib.mkEnableOption "Enables Ghostty terminal";
  };


  config = lib.mkIf config.ghostty.enable {
    # home.packages = with pkgs; [ ghostty ];

    programs.ghostty = {
      enable = true;
      theme = "catppuccin-mocha";
      
      keybind = [
        "ctrl+h=goto_split:left"
        "ctrl+l=goto_split:right"
      ];


    };
    
  };
 
}

