{ pkgs, config, ... }: {
 

  imports = [
    ./variables.nix

    ./../../home
  ]; 

  # TODO: Move options to a different file
  neofetch.enable = true;
  kitty.enable = true;
  firefox.enable = true;
  wofi.enable = true;


  # TODO: Move waybar options to different file
  # Options to chose from: waybarWindows, 
  waybarCrystal.enable = true;
  # waybarWindows.enable = false;
  

  home = {


    inherit (config.var) username;
    homeDirectory = "/home/" + config.var.username;
    
    packages = with pkgs; []; # TODO: test and add packages

    stateVersion = "24.11"; 
     
  };
  
  programs.home-manager.enable = true;

}



