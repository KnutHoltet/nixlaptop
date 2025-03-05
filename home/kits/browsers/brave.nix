{ pkgs, lib, config, inputs, ... }: {
  
  options = {
    firefox.enable =
      lib.mkEnableOption "Enables Brave";
  };
  
  config = lib.mkIf config.firefox.enable {
    home.packages = with pkgs; [
      brave
    ];

  };
}
