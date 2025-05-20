{
  xdg.mimeApps = {
    enable = true;

    defaultApplications = {
      # Browsers
      "text/html" = "firefox.desktop";
      "x-scheme-handler/http" = "firefox.desktop";
      "x-scheme-handler/https" = "firefox.desktop";

      # Text
      "text/plain" = "nvim.desktop";
      "text/markdown" = "nvim.desktop";

      # PDFs
      "application/pdf" = "org.pwmt.zathura-pdf-mupdf.desktop";

      # Images (GNOME image viewer)
      "image/png" = "org.gnome.ImageViewer.desktop";
      "image/jpeg" = "org.gnome.ImageViewer.desktop";
      "image/webp" = "org.gnome.ImageViewer.desktop";

      # GIFs & videos
      "image/gif" = "vlc.desktop";
      "video/mp4" = "vlc.desktop";
      "video/x-matroska" = "vlc.desktop";
      "video/webm" = "vlc.desktop";
      "video/ogg" = "vlc.desktop";

      # Misc
      "application/x-wine-extension-osz" = "osu-stable.desktop";
    };
  };
}
