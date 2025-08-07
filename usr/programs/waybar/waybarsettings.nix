{
  programs.waybar = {
    enable = true;
    settings = [
      {
        layer = "top";
        position = "top";
        spacing = 0;
        height = 22;
        modules-left = [
          "hyprland/workspaces"
        ];
        modules-center = [
          "clock"
        ];
        modules-right = [
          # "custom/dropbox"
          "custom/weather"
          "memory"
          "keyboard-state"
          "bluetooth"
          "network"
          #"cpu"
          "tray"
          "wireplumber"
          "custom/notification"
          "battery"
        ];
        "hyprland/workspaces" = {
          on-click = "activate";
          format = "{icon}";
          format-icons = {
            default = "";
            "1" = "一";
            "2" = "二";
            "3" = "三";
            "4" = "4";
            "5" = "5";
            "6" = "6";
            "7" = "7";
            "8" = "8";
            "9" = "9";
            "10" = "";
            #active = "󰯉";
          };
          persistent-workspaces = {
            "*" = 1;
          };
        };
        cpu = {
          interval = 5;
          format = "󰍛";
          on-click = "ghostty -e btop";
        };
        clock = {
          interval = 1;
          format = "{:%A %H:%M:%S}";
          format-alt = "{:%d %B W%V %Y}";
          # Tooltip showing the calendar with some colors
          tooltip-format = "<span>{calendar}</span>";
          calendar = {
              mode = "month";
              mode-mon-col = 3;
              on-scroll = 1;
              format = {
              months = "<span color='#ffead3'><b>{}</b></span>";
              weekdays = "<span color='#ffcc66'><b>{}</b></span>";
              today = "<span color='#ff6699'><b>{}</b></span>";
              };
          };
          actions = {
              on-click = "tz_up";            # Cycle forward timezone
              on-click-right = "mode";       # Change calendar mode
              on-scroll-up = "shift_up";     # Scroll to next
              on-scroll-down = "shift_down"; # Scroll to previous
          };
        };
        network = {
          format-icons = ["󰤯" "󰤟" "󰤢" "󰤥" "󰤨"];
          format = "{icon}";
          format-wifi = "{icon}";
          format-ethernet = "󰀂";
          format-disconnected = "󰖪";
          tooltip-format-wifi = ''
          {essid} ({frequency} GHz)
          Bandwidth: <b>⇣{bandwidthDownBytes}  ⇡{bandwidthUpBytes}</b>
          Signal strength: <b>{signaldBm}dBm ({signalStrength}%)</b>
          Frequency: <b>{frequency}MHz</b>
          Interface: <b>{ifname}</b>
          IP: <b>{ipaddr}/{cidr}</b>
          Gateway: <b>{gwaddr}</b>
          Netmask: <b>{netmask}</b>
          '';
          tooltip-format-ethernet = "⇣{bandwidthDownBytes}  ⇡{bandwidthUpBytes}";
          tooltip-format-disconnected = "Disconnected";
          interval = 3;
          nospacing = 1;
          on-click = "kitty -e nmtui";
        };
        battery = {
          states = {
            warning = 30;
            critical = 15;
          };
          format = "{icon}  {capacity}%";
          format-charging = "  {capacity}%";
          format-plugged = "";
          format-alt = "{capacity}% {time}";
          format-icons = [ "" "" "" "" "" ];
        };
        bluetooth = {
          format = "󰂯";
          format-disabled = "󰂲";
          format-connected = "";
          tooltip-format = "Devices connected: {num_connections}";
          on-click = "blueman-manager";
        };
        wireplumber = {
          format = "{icon}";
          format-alt-click = "click-right";
          format-muted = "";
          format-icons = {
            headphones = "";
            handsfree = "";
            headset = "";
            phone = "";
            portable = "";
            car = "";
            default = [ "" " " " " ];
          };
          format-source = "";
          format-source-muted = "";
          scroll-step = 10;
          on-click = "pactl set-sink-mute @DEFAULT_SINK@ toggle";
          on-click-right = "pavucontrol";
          tooltip-format = "{icon}{volume}%";
        };
        tray = {spacing = 13;};
        power-profiles-daemon = {
          format = "{icon}";
          tooltip-format = "Power profile: {profile}";
          tooltip = true;
          format-icons = {
            power-saver = "󰡳";
            balanced = "󰊚";
            performance = "󰡴";
          };
        };
        "custom/notification" = {
            tooltip = false;
            format = "{icon}";
            format-icons = {
                "notification" = "󰅸";
                "none" = "󰂜";
                "dnd-notification" = "󰺁";
                "dnd-none" = "󱏨";
          };
          "return-type" = "json";
          "exec-if" = "which swaync-client";
          "exec" = "swaync-client -swb";
          "on-click" = "swaync-client -t -sw";
          "on-click-right" = "swaync-client -d -sw";
          "escape" = true;
        };
        "keyboard-state" = {
          numlock = true;
          capslock = true;
          format = {
            numlock = "N";
            capslock = "C";
          };
          format-icons = {
            locked = "";
            unlocked = "";
          };
        };    
        "custom/weather" = {
          format = "{}°";
          tooltip = true;
          interval = 1800;
          exec = "wttrbar";
          return-type = "json";
        };    

        "memory" = {
          interval = 30;
          format = " {}%";
          max-length = 10;
        };
        # "custom/dropbox" = {
        #   format = "";
        #   on-click = "nautilus ~/Dropbox";
        #   exec = "dropbox-cli status";
        #   return-type = "text";
        #   interval = 5;
        #   tooltip = true;
        #   tooltip-format = "{}";
        # };
      }
    ];
  };
}

