{ pkgs, lib, config, inputs, ... }: {
  
  options = {
    brave.enable =
      lib.mkEnableOption "Enables Brave";
  };
  
  config = lib.mkIf config.brave.enable {
    home.packages = with pkgs; [
      brave
    ];

  };
}
