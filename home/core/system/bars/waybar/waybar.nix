{ pkgs, lib, config, ... }: {
  
  imports = [
    ./style.nix
    ./settings.nix
  ];

  options = {
    waybar.enable =
      lib.mkEnableOption "Enables Waybar";
  };

  config = lib.mkIf config.waybar.enable {
    
    fonts.packages = with pkgs; [
      nerdfonts
    ];

    programs.waybar = {
      enable = true;
      systemd.enable = true;


    };
  };
}
