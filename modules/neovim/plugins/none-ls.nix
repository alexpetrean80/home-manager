{...}: {
  programs.nixvim.plugins.none-ls = {
    enable = true;
    enableLspFormat = false;
    sources = {
      diagnostics = {
        commitlint.enable = true;
        golangci_lint.enable = true;
        markdownlint.enable = true;
        pylint.enable = true;
        selene.enable = true;
        sqlfluff.enable = true;
        statix.enable = true;
        yamllint.enable = true;
      };
      formatting = {
        alejandra.enable = true;
        black.enable = true;
        isort.enable = true;
        markdownlint.enable = true;
        prettierd.enable = true;
        shfmt.enable = true;
        shellharden.enable = true;
        stylua.enable = true;
      };
    };
  };
}
