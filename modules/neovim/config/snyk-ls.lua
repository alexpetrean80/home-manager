local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
  return
end

function get_cli_path()
  local binary_format = package.cpath:match("%p[\\|/]?%p(%a+)")
  local path = ""

  if binary_format == "so" then
    function os.name()
      path = "/home/alexp"
    end
  elseif binary_format == "dylib" then
    function os.name()
      path = "/Users/alexp"
    end
  end

  return path .. "/.nix-profile/bin/snyk"
end

-- configuration for all language servers go here
-- configure Snyk
lspconfig["snyk_ls"].setup({
  init_options = {
    activateSnykCode = "true",
    activateSnykIac = "false",
    activateSnykCodeQuality = "false",
    cliPath = "/Users/alexp/.nix-profile/bin/snyk",
    automaticAuthentication = "true",
    manageBinariesAutomatically = "false",
    integrationName = "neovim",
    integrationVersion = "0.10.0",
    path = "/usr/local/bin",
    token = os.getenv("SNYK_TOKEN"),
    trustedFolders = {
      "/Users/alexp/Repos", -- for MacOS
      "/home/alexp/Repos",  -- for Linux
    },
  },
})
