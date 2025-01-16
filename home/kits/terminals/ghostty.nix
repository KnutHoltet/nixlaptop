{ pkgs, lib, config, ... }: {

  options = {
    ghostty.enable =
      lib.mkEnableOption "Enables Ghostty terminal";
  };


  config = lib.mkIf config.ghostty.enable {
    home.packages = with pkgs; [ ghostty ];
  };
 
}

