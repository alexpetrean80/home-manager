{ pkgs, ... }: {
  imports = [
    ../../modules
    ../../modules/cli
    ../../modules/gui
    ../../modules/gui/theming/qt
    ../../modules/gui/theming/gtk
    ../../modules/gui/terminals/kitty
    ../../modules/gui/zed
  ];

  programs.kitty.extraConfig = ''
    font_size 14.0
    background_blur 1
    background_opacity 0.9
  '';

  home = {
    username = "alexp";
    homeDirectory = "/home/alexp";
    stateVersion = "24.05";
  };
}
