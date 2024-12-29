{ pkgs, lib, config, ... }: {
  options = {
    gotham.enable =
      lib.mkEnableOption "Enables Gotham colorscheme";
  };
  
  config = lib.mkIf config.gotham.enable {
    
    stylix = {
      enable = true;
     

      image = pkgs.fetchurl {
        url = "https://www.pixelstalk.net/wp-content/uploads/2016/05/Epic-Anime-Awesome-Wallpapers.jpg";
        sha256 = "enQo3wqhgf0FEPHj2coOCvo7DuZv+x5rL/WIo4qPI50=";
        
        
      };
  
      base16Scheme = {
        base00 = "0C1014";
        base01 = "11151C";
        base02 = "091F2E";
        base03 = "0A3749";
        base04 = "245361";
        base05 = "599CAB";
        base06 = "99D1CE";
        base07 = "D3EBE9";
        base08 = "C23127";
        base09 = "D26937";
        base0A = "EDB443";
        base0B = "33859E";
        base0C = "2AA889";
        base0D = "195466";
        base0E = "888CA6";
        base0F = "4E5166";
      };

      
    };
 


  };
}
