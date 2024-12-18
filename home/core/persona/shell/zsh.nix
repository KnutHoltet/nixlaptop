{ pkgs, lib, config, ... }: {
 
  programs.zsh = {
    enable = true;
    syntaxHighlighting.enable = true;
    
    history = {
      ignoreDups = true;
      save = 10000;
      size = 10000;
    };

    shellAliases = {
      cs = "cowsay";
    };

  };
}
