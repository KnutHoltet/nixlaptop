{ pkgs, lib, config, ... }: {

  options = {
    rofi.enable =
      lib.mkEnableOption "Enables rofi";
  };

  config = lib.mkIf config.rofi.enable {

    # home.packages = with pkgs; [ wofi-emoji ];

    programs.rofi = {
      enable = true;

    }; # programs

  };

}

