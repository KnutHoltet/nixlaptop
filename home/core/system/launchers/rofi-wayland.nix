{ pkgs, lib, config, ... }: {

  options = {
    rofiwayland.enable =
      lib.mkEnableOption "Enables rofi-wayland";
  };

  config = lib.mkIf config.rofiwayland.enable {
    home.packages = with pkgs; [ rofi-wayland ];
  };

  

}
