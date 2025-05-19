{
programs.waybar.settings = {
  mainBar = {
    layer = "bottom";
    position = "bottom";
    height = 46;

    modules-left = [ "clock" "custom/nixicon" "hyprland/workspaces" ];
    modules-center = [ "hyprland/window" ];
    modules-right = [
      "network" "cpu" "memory" "pulseaudio"
      "custom/weather" "keyboard-state" "custom/notification"
      "battery"
    ];

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
      interval = 3600;
      exec = "wttrbar";
      return-type = "json";
    };

    "custom/nixicon" = {
      format = "";
      tooltip = false;
    };

    "hyprland/workspaces" = {
      format = "{icon}";
      format-icons = {
        "1" = "一";  # U+4E00
        "2" = "二";  # U+4E8C
        "3" = "三";  # U+4E09
        "4" = "4";
        "5" = "5";
        "6" = "6";
        "7" = "7";
        "8" = "八";  # U+516B
        "9" = "九";  # U+4E5D
        "10" = "";
      };
      persistent-workspaces = {
        "*" = 1;
        # "HDMI-A-2" = 3;
      };
    };

    "hyprland/window" = {
      max-length = 40;
      format = "{}";
      icon = false;
      icon-size = 25;
      separate-outputs = true;
    };

    "hyprland/language" = {
      format-de = "DE";
      format-us = "US";
      keyboard-name = "at-translated-set-2-keyboard";
    };

    idle_inhibitor = {
      format = "{icon}";
      format-icons = {
        activated = "";
        deactivated = "";
      };
    };

    tray = {
      spacing = 10;
    };

    clock = {
    format = "{:%d/%m %H:%M:%S}";
    interval = 1;
    rotate = 0;

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

    # Actions for mouse clicks and scrolls
    actions = {
        on-click = "tz_up";            # Cycle forward timezone
        on-click-right = "mode";       # Change calendar mode
        on-scroll-up = "shift_up";     # Scroll to next
        on-scroll-down = "shift_down"; # Scroll to previous
    };
    };



    cpu = {
      format = "  {usage}%";
      tooltip = false;
    };

    memory = {
      interval = 30;
      format = "  {}%";
      max-length = 10;
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

    network = {
      tooltip = true;
      format-wifi = "  {essid}";
      rotate = 0;
      format-ethernet = "󰈀 ";
      tooltip-format = ''
        Network: <big><b>{essid}</b></big>
        Signal strength: <b>{signaldBm}dBm ({signalStrength}%)</b>
        Frequency: <b>{frequency}MHz</b>
        Interface: <b>{ifname}</b>
        IP: <b>{ipaddr}/{cidr}</b>
        Gateway: <b>{gwaddr}</b>
        Netmask: <b>{netmask}</b>
      '';
      format-linked = "󰈀 {ifname} (No IP)";
      format-disconnected = "󰖪 ";
      tooltip-format-disconnected = "Disconnected";
      format-alt = "<span foreground='#99ffdd'> {bandwidthDownBytes}</span> <span foreground='#ffcc66'> {bandwidthUpBytes}</span>";
      interval = 2;
    };

    bluetooth = {
      format = "";
      rotate = 0;
      format-disabled = "";
      format-connected = " {num_connections}";
      format-connected-battery = "{icon} {num_connections}";
      format-icons = [
        "󰥇" "󰤾" "󰤿" "󰥀" "󰥁" "󰥂"
        "󰥃" "󰥄" "󰥅" "󰥆" "󰥈"
      ];
      tooltip-format = "{controller_alias}\n{num_connections} connected";
      tooltip-format-connected = "{controller_alias}\n{num_connections} connected\n\n{device_enumerate}";
      tooltip-format-enumerate-connected = "{device_alias}";
      tooltip-format-enumerate-connected-battery = "{device_alias}\t{icon} {device_battery_percentage}%";
    };

    pulseaudio = {
      format = "{icon} {volume}%";
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
      tooltip-format = "{icon}  {volume}%";
    };

    "pulseaudio#microphone" = {
      format = "{format_source}";
      rotate = 0;
      format-source = "";
      format-source-muted = "";
      on-click-right = "pavucontrol -t 4";
      tooltip-format = "{format_source} {source_volume}%";
      scroll-step = 5;
    };

    backlight = {
      format = "{icon}";
      tooltip-format = "{icon} {percent}%";
      format-icons = [
        "" "" "" "" "" ""
        "" "" "" "" "" ""
        "" "" ""
      ];
      scroll-step = 5;
    };

    "custom/notification" = {
    tooltip = false;
    format = "{icon}";
    format-icons = {
        "notification" = "<span foreground='red'><small>⬤</small></span>";
        "none" = "";
        "dnd-notification" = " <span foreground='red'><small>⬤</small></span>";
        "dnd-none" = "";
    };
    "return-type" = "json";
    "exec-if" = "which swaync-client";
    "exec" = "swaync-client -swb";
    "on-click" = "swaync-client -t -sw";
    "on-click-right" = "swaync-client -d -sw";
    "escape" = true;
    };

};
};
}
