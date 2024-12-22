{ pkgs, ... }: {
  
  imports = [
    ./core
    ./kits
  ];
  

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];
 


}
