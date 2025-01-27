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
        theme = "Adwaita";
        keybind = [
          # "ctrl+h=goto_split:left"
          # "ctrl+l=goto_split:right"
        ];
      }; # settings

    }; # programs.ghostty
  }; # config

}

