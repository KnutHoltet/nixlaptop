{ pkgs, ... }: {
  home.packages = with pkgs; [
    nmap
    hping
    medusa
    dig
    hashcat
    sqlmap
    whois
    sherlock
    ncrack
    burpsuite
  ];
}
