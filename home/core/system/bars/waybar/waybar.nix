{ pkgs, lib, config, ... }: {
  
  imports = [
    ./style.nix
  ];

  options = {
    waybar.enable =
      lib.mkEnableOption "Enables Waybar";
  };

  config = lib.mkIf config.waybar.enable {

    programs.waybar = {
      enable = true;
      systemd.enable = true;


    };
  };
}
