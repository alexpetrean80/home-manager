{ pkgs, ... }: {
  gtk = {
    enable = true;
    cursorTheme.name = "Breeze-Dark";
    theme.package = pkgs.catppuccin-gtk;
    theme.name = "Catppuccin Mocha";
  };
}
