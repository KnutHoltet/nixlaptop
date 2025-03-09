{ pkgs, config, ... }: {
 

  imports = [
    ./variables.nix
    ./../../home
    ./theming.nix
  ]; 

  # TODO: Move options to a different file
  neofetch.enable = true;
  kitty.enable = true;
  ghostty.enable = true;
  firefox.enable = false;
  brave.enable = true;
  thunar.enable = true;


  # Launchers
  # wofi.enable = true;
  # rofi.enable = true;
  tofi.enable = true;


  # TODO: Move waybar options to different file
  # Options to chose from: waybarWindows, 
  waybarWindows.enable = true;
  

  home = {


    inherit (config.var) username;
    homeDirectory = "/home/" + config.var.username;
    
    packages = with pkgs; []; # TODO: test and add packages

    stateVersion = "24.11"; 
     
  };
  
  programs.home-manager.enable = true;

}



