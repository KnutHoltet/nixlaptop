{ pkgs, config, lib, ... }: {

  options = {
    tmux.enable =
      lib.mkEnableOption "Enables tmux";
  };

  config = lib.mkIf config.tmux.enable {
    programs.tmux = {
      enable = true;
      mouse = true;
      keyMode = "vi";
      extraConfig = ''
        bind h select-pane -L
	bind j select-pane -D
	bind k select-pane -U
	bind l select-pane -R
      '';
    };
  };

}
