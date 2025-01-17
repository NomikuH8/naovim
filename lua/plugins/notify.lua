return {
  'rcarriga/nvim-notify',

  init = function()
    require("notify").setup()
    vim.notify = require("notify")
  end,
}

