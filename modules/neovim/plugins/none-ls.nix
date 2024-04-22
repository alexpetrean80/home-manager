{...}: {
  programs.nixvim.plugins.none-ls = {
    enable = true;
    enableLspFormat = true;
    sources = {
      diagnostics = {
        commitlint.enable = true;
        golangci_lint.enable = true;
        markdownlint.enable = true;
        pylint.enable = true;
        selene.enable = true;
        sqlfluff = {
          enable = true;
          #          withArgs = "--dialect postgres";
        };
        statix.enable = true;
        yamllint.enable = true;
      };
      formatting = {
        alejandra.enable = true;
        black.enable = true;
        goimports.enable = true;
        golines.enable = true;
        isort.enable = true;
        markdownlint.enable = true;
        prettierd.enable = true;
        shfmt.enable = true;
        shellharden.enable = true;
        stylua.enable = true;
      };
      code_actions = {
        gitrebase.enable = true;
        gitsigns.enable = true;
        impl.enable = true;
        refactoring.enable = true;
        gomodifytags.enable = true;
      };
    };
  };
}
