{ pkgs, lib, config, ... }: {
  options = {
    darrowbar.enable =
      lib.mkEnableOption "Enables darrow";
  };

  config = lib.mkIf config.darrowbar.enable {
      programs.waybar = {
      enable = true;
      settings = [{
        layer = "top";
        position = "top";
        modules-left = [ "custom/quote" "cpu" "memory" "temperature" "disk" "custom/git" ];
        modules-center = [ "clock" ];
        modules-right = [ "custom/volume" "pulseaudio" "custom/gaming_mode" "tray" ];

        "custom/quote".exec = "fortune -s philosophy | head -n 1";
        "custom/git".exec = "basename $(git rev-parse --show-toplevel 2>/dev/null || echo '')";
        "custom/volume".exec = "pamixer --get-volume-human";
        "custom/gaming_mode".exec = "test -f /tmp/gaming && echo '⚔ Gaming' || echo ''";
      }];

      style = ''
        * {
          font-family: "JetBrainsMono Nerd Font", monospace;
          font-size: 14px;
          border: none;
          color: #e5e5e5;
          background: #111;
        }

        window#waybar {
          background-color: rgba(17, 17, 17, 0.95);
          border-bottom: 2px solid #8c0000;
        }

        #custom-quote {
          color: #888;
          font-style: italic;
        }

        #cpu, #memory, #temperature, #disk, #clock {
          margin: 0 10px;
          padding: 4px 8px;
          background-color: #1c1c1c;
          border-radius: 5px;
        }

        #custom-git {
          color: #d4af37;
          font-weight: bold;
        }

        #custom-gaming_mode {
          color: #ff5555;
          animation: pulse 2s infinite;
        }

        @keyframes pulse {
          0% { opacity: 1; }
          50% { opacity: 0.4; }
          100% { opacity: 1; }
        }
      '';
    };

  };


}
