return {
  'akinsho/toggleterm.nvim',

  version = "*",

  init = function ()
    require('toggleterm').setup({
      direction = 'float',
    })
  end
}

