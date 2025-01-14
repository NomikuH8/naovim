return {
  'folke/neodev.nvim',
  opts = {},
  config = function()
    require("neodev").setup({
      library = {
        enabled = true,
        runtime = true,
        types = true,
        plugins = true,
      },
      setup_jsonls = true,
      lspconfig = true,
      pathStrict = true,
    })

    local lspconfig = require("lspconfig")
    lspconfig.lua_ls.setup({
      settings = {
        Lua = {
          completion = {
            callSnippet = "Replace",
          },
        },
      },
    })
  end,
}

