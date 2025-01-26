{ pkgs, ... }: {
  # Cowsay reborn, written in Go
  home.packages = with pkgs; [ neo-cowsay ];
}
