{ pkgs, lib, config, ... }:
let
  backgroundColor = "#000000dd";
  selectionColor = "#ffffffff";
  selectionBackground = "#0f415fdd";
  inputBackground = "141414dd";
  borderColor = "#0080ff";
in {

  options = {
    tofi.enable =
      lib.mkEnableOption "Enables tofi";
  };

  config = lib.mkIf config.tofi.enable {

    home.packages = with pkgs; [ zenity ];

    programs.tofi = {
      enable = true;

      settings = {
        # TODO give exact path or whatever :)
        font = "JetBrainsMono Nerd Font"; 
        font-size = 12;
        background-color = backgroundColor;
        selection-color = selectionColor;
        selection-background = selectionBackground;
        selection-background-padding = 6;
        input-background = inputBackground;
        input-background-padding = 6;

        padding-top = 4;
        padding-bottom = 4;
        padding-left = 4;
        padding-right = 4;

        result-spacing = 12;
        border-width = 2;
        border-color = borderColor;
        outline-width = 0;

        promt-text = " ";

      };

    }; # programs

  };

}

