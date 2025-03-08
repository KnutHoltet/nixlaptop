{ lib, ... }: {
  programs.starship = {
    enable = true;
    settings = {
      add_newline = false;
      format = lib.concatStrings [
        "$directory"
        "$git_branch"
        "$git_statue"
        "$git_status"
        "$character"

      ];

      # directory = {
      # };

      # TODO: Farger
      character = {
        success_symbol = "[❯](#b8bb26)";
        error_symbol = "[❯](red)";
        vimcmd_symbol = "[❮](cyan)";
      };

      git_branch = {
        symbol = "[ ](#fe8019) ";
        style = "fg: #b8bb26 bg:#b8aa25";
        format = "on [$symbol$branch]($style)[ ](green) ";
      };

      
      git_state = {
        format = "([$state( $progress_current/$progress_total)]($style)) ";
        style = "bright-black";
      };

    }; # settings
  };
}
