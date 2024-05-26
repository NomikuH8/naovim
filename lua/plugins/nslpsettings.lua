return {
  'tamago324/nlsp-settings.nvim',

  init = function()
    local nlspsettings = require("nlspsettings")
    nlspsettings.setup({
      config_home = vim.fn.stdpath('config') .. '/lsp-settings',
      append_default_schemas = true,
      ignored_servers = {},
      loader = "json",
    })
  end,
}
