{ pkgs, ... }: {
  qt = {
    enable = true;
    style = {
      package = pkgs.catppuccin-kde;
    };
  };
}
