{ pkgs, lib, config, inputs, ... }: {
  
  options = {
    firefox.enable =
      lib.mkEnableOption "Enables Firefox";
  };
  
  config = lib.mkIf config.firefox.enable {

    # home.packages = with pkgs; [ firefox ];
    programs.firefox = {
      enable = true;

      profiles.${config.var.username} = {
        extensions = with inputs.firefox-addons.packages."x86_64-linux"; [
          ublock-origin
        ];

      }; # profiles

    }; #programs.firefox

  };
}
