{...}: {
  programs.nixvim.plugins.which-key = {
    enable = true;

    settings.spec = [
      {
        __unkeyed-1 = "<leader>b";
        group = "Buffers";
      }
      {
        __unkeyed-1 = "<leader>l";
        group = "LSP";
      }
      {
        __unkeyed-1 = "<leader>c";
        group = "Calls";
      }
      {
        __unkeyed-1 = "<leader>d";
        group = "Diagnostics";
      }
      {
        __unkeyed-1 = "<leader>D";
        group = "Debug";
      }
      {
        __unkeyed-1 = "<leader>p";
        group = "peek";
      }
      {
        __unkeyed-1 = "<leader>t";
        group = "Test";
      }
      {
        __unkeyed-1 = "<leader>D";
        group = "Debug";
      }
    ];
  };
}
