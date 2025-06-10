{ pkgs, config, lib, ... }: {

  options = {
    tmux.enable =
      lib.mkEnableOption "Enables tmux";
  };

  config = lib.mkIf config.tmux.enable {
    home.packages = with pkgs; [ tmux ];
  };

}
