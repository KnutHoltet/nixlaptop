{ pkgs, lib, config, ... }: {

  options = {
    zsh.enable =
      lib.mkEnableOption "Enables zsh";
  };

  config = lib.mkIf config.zsh.enable {
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


      shellAliases = {
        cs = "cowsay";
        asciiq = "asciiquarium";

        nswitch = "sudo nixos-rebuild switch --flake ."; # current dir

        ls  = "eza --icons=always --no-quotes";
        vim = "nvim";
      };
    };
  };
}
