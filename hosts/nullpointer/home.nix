{ pkgs, config, ... }: {
 

  imports = [
    ./variables.nix
    ./../../home
    ./theming.nix
  ]; 

  zsh.enable = true;

  tmux.enable = true;

  neofetch.enable = true;
  kitty.enable = true;
  ghostty.enable = true;
  firefox.enable = false;
  brave.enable = true;
  thunar.enable = true;


  wofi.enable = true;
  rofi.enable = true;
  tofi.enable = true;


  waybarWindows.enable = true;
  darrowbar.enable = false;
  

  home = {

    inherit (config.var) username;
    homeDirectory = "/home/" + config.var.username;
    
    packages = with pkgs; []; # TODO: test and add packages

    stateVersion = "24.11"; 
     
  };
  
  programs.home-manager.enable = true;

}



