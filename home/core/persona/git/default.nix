{ config, ... }:
let
  username = config.var.git.username;
  email = config.var.git.email;
in
{
  programs.git = {
    enable = true;
    userName = username;
    userEmail = email;
    ignores = [
      ".cache/"
      ".idea/"
      ".direnv/"
    ];
    

    extraConfig = {
      init.defaultBranch = "main";
    };
  };

}
