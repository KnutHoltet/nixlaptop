{ pkgs, lib, config, ... }: {
  
  imports = [
    ./style.nix
    ./settings.nix
  ];

  options = {
    waybarCrystal.enable =
      lib.mkEnableOption "Enables Waybar";
  };

  config = lib.mkIf config.waybarCrystal.enable {
    

    programs.waybar = {
      enable = true;
      systemd.enable = true;


    };
  };
}
