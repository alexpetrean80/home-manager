{pkgs, ...}: {
  imports = [
    ../../modules
    ../../modules/cdp
    ../../modules/git
    ../../modules/wezterm
    ../../modules/neovim
    ../../modules/starship
    ../../modules/tmux
    ../../modules/zsh
    ../../modules/packages.nix
  ];

  programs.git.includes = [
    {
      contents = {
        user = {
          email = "alex-tudor.petrean@snyk.io";
          signingkey = "E51D11C1C401B8F1FA26DA7301D2E393ABC8B299";
        };
        commit = {
            gpgSign = true;
        };
      };
    }
  ];

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
