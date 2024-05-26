return {
  'akinsho/bufferline.nvim',

  version = "*",

  init = function()
    require("bufferline").setup({
      options = {
        diagnostics = 'nvim_lsp',
      }
    })
  end,
}
