{ pkgs, lib, config, ... }: {
  
  options = {
    firefox.enable =
      lib.mkEnableOption "Enables Firefox";
  };
  
  config = lib.mkIf config.firefox.enable {

    # home.packages = with pkgs; [ firefox ];
    programs.firefox = {
      enable = true;

      profiles.${config.var.username} = {
        extensions = with pkgs.nur.repos.rycee.firefox-addons; [
          ublock-origin
        ];

      }; # profiles

    }; #programs.firefox

  };
}
