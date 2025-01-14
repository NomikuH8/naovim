return {
  'nvim-lualine/lualine.nvim',

  init = function()
    require("lualine").setup({
      options = {
        theme = 'auto',
      },
    })
  end,
}

