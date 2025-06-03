{ pkgs, lib, config, ... }: {

  # https://github.com/NotAShelf/nvf

  options = {
    nvf.enable =
    lib.mkEnableOption "Enables nvf (nvim thingy, very nice)";
  };

  config = lib.mkIf config.nvf.enable {
    programs.nvf = {
      enable = true;
      
      settings = {
        vim.theme.enable = true;
        vim.theme.name = "dracula";
        vim.theme.style = "dark";
        

        # vim.languages.nix.enable = true;
      };
    };
  };
}
