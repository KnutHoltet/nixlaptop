{ pkgs, lib, config, ... }: {
 
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    enableCompletion = true;

    
    history = {
      ignoreDups = true;
      save = 10000;
      size = 10000;
    };

    # initContent= ''
    # '';

    shellAliases = {
      # Fun stuff
      cs = "cowsay";
      asciiq = "asciiquarium";
     
      # NixOs/Nix related
      nswitch = "sudo nixos-rebuild switch --flake ."; # current dir

      # LS
      ls  = "eza --icons=always --no-quotes";
    };

  };
}
