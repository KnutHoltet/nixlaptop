{ pkgs, lib, config, ... }: {

  options = {
    neofetch.enable =
      lib.mkEnableOption "Enables neofetch";
  };


  config = lib.mkIf config.neofetch.enable {
      
    home.packages = with pkgs; [ neofetch ];

  };


}
