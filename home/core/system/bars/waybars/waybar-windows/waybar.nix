{ pkgs, lib, config, ... }: {
  
  imports = [
    ./style.nix
    ./settings.nix
  ];

  options = {
    waybarWindows.enable =
      lib.mkEnableOption "Enables Waybar";
  };

  config = lib.mkIf config.waybarWindows.enable {
    

    programs.waybar = {
      enable = true;
      systemd.enable = true;


    };
  };
}
