{ pkgs, lib,  ... }: {
  
  imports = [
    ./core
    ./kits
  ];
  


  # fonts.fontconfig.defaultFonts.monospace
  # May want to move the fonts to /nixos/ or nixos modules
  # so you dont have to run `fc-cache -rf` to refresh the font cache everytime
  # run command before rebuild
  # home.packages = with pkgs; [ nerdfonts ];
  fonts.packages = [ ] ++ builtins.filter lib.attrsets.isDerivation (builtins.attrValues pkgs.nerd-fonts)
 


}
