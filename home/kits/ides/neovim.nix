{ pkgs, ... }: {
  programs.neovim = {
    enable = true;
    
    coc = {
      enable = true;
    };
  };
}
