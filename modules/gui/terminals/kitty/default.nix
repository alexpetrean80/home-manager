{lib, ...}: {
  programs.kitty = {
    enable = true;
    extraConfig = lib.readFile ./config/kitty.conf;
  };
}
