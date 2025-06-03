{
  services.swayidle = {
    enable = true;
    timeouts = [
      { timeout = 1; command = "swayidle-sh"; }
    ];
  };
}
      # command = "swayidle-sh",
