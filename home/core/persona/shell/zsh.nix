{ pkgs, lib, config, ... }: {
 
  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    syntaxHighlighting.enable = true;
    enableCompletion = true;
    
    history = {
      ignoreDups = true;
      save = 10000;
      size = 10000;
    };

    initExtra = ''
    echo -e "\033[1;34m🖥️  Initializing J.A.R.V.I.S...\033[0m"
sleep 0.9
echo -e "\033[1;32m🔧 Running system diagnostics...\033[0m"
sleep 0.1
echo -e "\033[1;32m✅ All systems functional.\033[0m"
sleep 0.1
echo -e "\033[1;34m🔋 Power levels: Stable.\033[0m"
sleep 0.1
echo -e "\033[1;34m📡 Establishing secure uplink...\033[0m"
sleep 0.1
echo -e "\033[1;34m🔓 Authentication verified.\033[0m"
sleep 0.1
echo -e "\033[1;34m🖥️  J.A.R.V.I.S. Online.\033[0m"
sleep 0.3
echo -e "\033[1;32m✅ Welcome back, Sir. Systems are fully operational.\033[0m"
sleep 1
echo -e "\033[1;36m💡 How may I assist you today?\033[0m"



    '';

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
