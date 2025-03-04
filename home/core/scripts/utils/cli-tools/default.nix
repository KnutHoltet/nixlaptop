{ pkgs, ... }:

let

  count-lines = pkgs.writeShellScriptBin "count-lines" ''
    if [ -z "$1" ]; then
      return 1
    fi
      find . -type f -name "$1" -exec grep -v '^[[:space:]]*$' {} \; | wc -l
  '';

in {
  home.packages = [ count-lines ];

}

