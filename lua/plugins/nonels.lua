return {
  'nvimtools/none-ls.nvim',

  config = function()
    require("null-ls").setup({
      null_ls = {
        setup = {
          debug = false,
        },
        config = {},
      },
    })
  end,
}
