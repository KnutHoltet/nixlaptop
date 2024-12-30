{ pkgs, lib, config, ... }: {
  
  imports = [
    ./style.nix
    ./settings.nix
  ];

  options = {
    waybarCrystal.enable =
      lib.mkEnableOption "Enables Waybar";
  };

  config = lib.mkIf config.waybar.enable {
    

    programs.waybar = {
      enable = true;
      systemd.enable = true;


    };
  };
}
