{ pkgs, ... }:

let

  count-lines = pkgs.writeShellScriptBin "count-lines" ''
    if [ -z "$1" ]; then
      echo "Please provide a file extension (e.g., '*.java')"
      return 1
    fi
      wc -l $1 | awk '{s+=$1} END {print s}'
  '';

in {
  home.packages = [ count-lines ];

}

