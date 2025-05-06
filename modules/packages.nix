{ pkgs, pkgsUnstable, ... }: {

  # List packages installed in system profile.

  environment.systemPackages = 
    (with pkgsUnstable; [
      # Unstable here
    ags
    ])

    ++

    (with pkgs; [
    # Dictionary
    hunspellDicts.en_GB-ise
    hunspellDicts.en_GB-ize
    hunspellDicts.de_DE

    # Office and Productivity
    anki
    drawio
    fiji
    jabref
    libreoffice-still
    localsend
    obsidian
    ollama
    kdePackages.okular    
    # opentabletdriver
    mame
    megasync
    pandoc
    pdfarranger
    syncthing
    texliveFull
    texstudio
    thunderbird
    xgalagapp
    xournalpp
    zathura
    zotero

    # Disk and Filesystem Utilities
    # ags
    cifs-utils
    exfatprogs
    eww
    gparted
    hfsprogs
    ntfs3g
    testdisk-qt


    # System Utilities
    appimage-run
    blueman    
    brightnessctl
    btop
    dconf
    ddcutil
    ddcui
    feh
    fzf
    fprintd
    nautilus
    gammastep
    geoclue2
    gnome-calculator
    gnome-firmware
    gnugrep
    grim
    gvfs
    gnome.gvfs
    htop
    hypridle
    hyprland
    hyprlock
    hyprpaper
    hyprpicker
    hyprshot
    kitty
    kittysay
    libnotify
    libstdcxx5
    libtiff
    loupe
    neovim
    pamixer
    parted
    polkit_gnome
    rar
    ripgrep
    ripgrep-all
    rofimoji
    rofi-wayland
    samba
    sl
    slurp
    smartmontools
    sticky
    stow
    swaynotificationcenter
    tealdeer
    trash-cli
    tree
    unrar
    unzip
    usbutils
    wget
    wl-clipboard
    xclip
    xdg-utils
    zip
    zoxide

    # System Customization
    bibata-cursors
    eyedropper
    fastfetch
    gnome-control-center
    gnomeExtensions.gsconnect
    nwg-look
    pywal
    starship
    waybar
    wlogout

    # Web Browsing
    brave
    mullvad-browser

    # Development Tools
    conda
    gcc
    geany
    git
    lua
    luajitPackages.luarocks
    vscodium-fhs
    wtype

    # Networking and Communication
    discord
    ferdium
    fractal
    freerdp3
    github-desktop
    kdePackages.kdeconnect-kde
    openconnect
    rdesktop
    remmina
    wsdd
    kdePackages.xwaylandvideobridge #x11 to wayland screensharing
    zoom-us

    # Multimedia
    ffmpeg-full
    fswebcam
    libheif
    libraw
    nufraw
    obs-studio
    playerctl
    pavucontrol 
    scrcpy
    spotify
    vlc

    # Virtualisation
    gnome-boxes

    # Security & Privacy
    proton-pass
    ente-cli
    ente-auth
    gnupg # Signature and encryption lib
    pinentry-curses
    xmrig

    # Miscellaneous
    android-udev-rules
    android-tools
    cmatrix
    cowsay
    wttrbar
    yazi
    dotnet-runtime
    #(lutris.override {
    #   extraPkgs = pkgs: [
         # List package dependencies here
    #   ];
    #})
    wineWowPackages.stable
    winetricks
  ]);

}
