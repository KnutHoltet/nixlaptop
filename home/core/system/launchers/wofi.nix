{ pkgs, lib, config, ... }: {

  options = {
    wofi.enable =
      lib.mkEnableOption "Enables wofi";
  };

  config = lib.mkIf config.wofi.enable {

    home.packages = with pkgs; [ wofi-emoji ];

    programs.wofi = {
      enable = true;
    };

  };

}

