{ pkgs, ... }: {
  
  imports = [
    ./core
    ./kits
  ];
  

  # fonts.fontconfig.defaultFonts.monospace
  home.packages = with pkgs, [ nerd-fonts.jetbrains-mono ];
 


}
