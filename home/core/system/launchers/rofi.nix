{ pkgs, config, lib, ... }: {
  options = {
    rofi.enable =
      lib.mkEnableOption "Enables Rofi";
  };

  config = lib.mkIf config.rofi.enable {
    programs.rofi = {
      enable = true;
    };
  };
}
