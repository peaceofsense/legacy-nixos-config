{
  xdg.mimeApps = {
    enable = true;

    defaultApplications = {
      # Browsers
      "text/html" = "firefox.desktop";
      "x-scheme-handler/http" = "firefox.desktop";
      "x-scheme-handler/https" = "firefox.desktop";

      # Text
      "text/plain" = "geany.desktop";
      "text/markdown" = "geany.desktop";
      "text/json" = "geany.desktop";
      "text/calendar" = "userapp-Thunderbird-WP7AU2.desktop";

      # PDFs
      "application/pdf" = "org.pwmt.zathura-pdf-mupdf.desktop";

      # Images (GNOME image viewer)
      "image/png" = "org.gnome.Loupe.desktop ";
      "image/jpeg" = "org.gnome.Loupe.desktop ";
      "image/webp" = "org.gnome.Loupe.desktop ";
      "image/tiff" = "fiji.desktop";

      # GIFs & videos
      "image/gif" = "vlc.desktop";
      "video/mp4" = "vlc.desktop";
      "video/x-matroska" = "vlc.desktop";
      "video/webm" = "vlc.desktop";
      "video/ogg" = "vlc.desktop";
      
      # Misc
      "application/x-partial-download" = "vlc.desktop";
    };
  };
}
