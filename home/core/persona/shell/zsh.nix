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
      # Fun stuff
      cs = "cowsay";
     
      # NixOs/Nix related
      nswitch = "sudo nixos-rebuild switch --flake ."; # current dir
    };

  };
}
