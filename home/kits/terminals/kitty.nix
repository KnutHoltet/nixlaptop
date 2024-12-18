{ pkgs, lib, config, ... }: {

  options = {
    kitty.enable =
      lib.mkEnableOption "Enables Kitty terminal";
  };


  config = lib.mkIf config.kitty.enable {
    home.packages = with pkgs; [ kitty ];
  };

}
