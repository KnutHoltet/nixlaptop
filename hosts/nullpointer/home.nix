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
  

  home = {


    inherit (config.var) username;
    homeDirectory = "/home/" + config.var.username;
    
    packages = with pkgs; []; # TODO: test and add packages

    stateVersion = "24.11"; 
     
  };
  
  programs.home-manager.enable = true;

}



