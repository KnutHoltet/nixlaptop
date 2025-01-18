{ pkgs, config, lib, ... }: {
  options = {
    thunar.enable =
      lib.mkEnableOption "Enables Thunar";
  };
 
  config = lib.mkIf config.thunar.enable {
    home.packages = with pkgs; [ thunar ];
  };
}
