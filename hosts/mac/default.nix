{ pkgs
, lib
, ...
}: {
  imports = [
    ../../modules
    ../../modules/git
    ../../modules/wezterm
    ../../modules/kitty
    ../../modules/starship
    ../../modules/tmux
    # ../../modules/zsh
    ../../modules/fish
    ../../modules/packages.nix
  ];

  programs = {
    git.includes = [
      {
        contents = {
          user = {
            email = "alex-tudor.petrean@snyk.io";
            signingkey = "E99CC35A3A9AD49452F8BB98D2E6235BA0DF15D1";
          };
          commit = {
            gpgSign = true;
          };
        };
      }
    ];
  };

  home.packages = with pkgs; [
    aws-vault
    snyk
    teleport
    terraform
    tilt
    confluent-cli
    jdk17
    darwin.CF
    darwin.Libc
    darwin.Security
    jira-cli-go
  ];

  home = {
    username = "alexp";
    homeDirectory = "/Users/alexp";
    stateVersion = "24.05";
  };
}
