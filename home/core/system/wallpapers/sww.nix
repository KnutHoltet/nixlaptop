{ pkgs, ... }: {

  environment.systemPackages = with; pkgs [
    sww
  ];

}
