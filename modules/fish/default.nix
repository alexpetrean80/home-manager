{ ... }: {
  programs.fish = {
    enable = true;
    shellAbbrs = {
      lzg = "lazygit";
      ls = "eza -lgh";
    };
    shellInitLast = ''
      starship init fish | source
    '';
  };
}
