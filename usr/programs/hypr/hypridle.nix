{
  services.hypridle = {
    enable = true;

    settings = {
      general = {
        # Run hyprlock only if not already running
        lock_cmd = "pidof hyprlock || hyprlock";
        before_sleep_cmd = "loginctl lock-session";
        after_sleep_cmd = "hyprctl dispatch dpms on";
      };

      listeners = [
        {
          timeout = 600;  # 10 minutes
          on_timeout = "loginctl lock-session";
        }
        {
          timeout = 660;  # 11 minutes
          on_timeout = "hyprctl dispatch dpms off";
          on_resume = "hyprctl dispatch dpms on";
        }
        {
          timeout = 1800; # 30 minutes
          on_timeout = "systemctl suspend";
        }
      ];
    };
  };
}
