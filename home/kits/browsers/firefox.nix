{ pkgs, lib, config, ... }: {
  
  options = {
    firefox.enable =
      lib.mkEnableOption "Enables Firefox";
  };
  
  config = lib.mkIf config.firefox.enable {

    # home.packages = with pkgs; [ firefox ];
    programs.firefox = {
      enable = true;
      # profiles.${user} = {

      # }; # profiles
    }; #programs.firefox

  };
}
