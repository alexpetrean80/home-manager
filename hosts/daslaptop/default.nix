{...}: {
  imports = [
    ../../modules
    ../../modules/cdp
    ../../modules/git
    # ../../modules/gnome
    ../../modules/kitty
    ../../modules/neovim
    ../../modules/tmux
    ../../modules/wezterm
    ../../modules/starship
    ../../modules/zsh
    ../../modules/packages.nix
  ];

  home = {
    username = "alexp";
    homeDirectory = "/home/alexp";
    programs.kitty.extraConfig = ''
      font_size 14.0
      background_blur 1
      background_opacity 0.9
    '';
    stateVersion = "24.05";
  };
}
