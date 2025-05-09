{
  services.swayidle = {
    enable = true;
    timeouts = [
      {
        timeout = 600;
        command = "swayidle-sh";
      }
    ];
  };
}
