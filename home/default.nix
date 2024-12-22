{ pkgs, ... }: {
  
  imports = [
    ./core
    ./kits
  ];
  


  # fonts.fontconfig.defaultFonts.monospace
  # May want to move the fonts to /nixos/ or nixos modules
  # so you dont have to run `fc-cache -rf` to refresh the font cache everytime
  home.packages = with pkgs; [ nerd-fonts.jetbrains-mono ];
 


}
