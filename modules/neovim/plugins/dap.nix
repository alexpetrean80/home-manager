{...}: {
  programs.nixvim.plugins.dap = {
    enable = true;
    extensions = {
      dap-go.enable = true;
      dap-ui = {
        enable = true;
        expandLines = true;
        forceBuffers = true;
        controls = {
            enabled = true;
          };
      };
      dap-virtual-text = {
          enable = true;
          allFrames = true;
        };
    };
  };
}
