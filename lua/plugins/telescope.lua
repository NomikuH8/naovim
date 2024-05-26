return {
  'nvim-telescope/telescope.nvim',

  branch = '0.1.x',

  config = function()
    require('telescope').setup({})

    local builtin = require('telescope.builtin')
    local map = vim.keymap.set

    map('n', '<leader>ff', builtin.find_files, { desc = 'Find files' })
    map('n', '<leader>fg', builtin.live_grep, { desc = 'Live grep' })
    map('n', '<leader>fb', builtin.buffers, { desc = 'Find Buffers' })
    map('n', '<leader>fh', builtin.help_tags, { desc = 'Find help tags' })
  end,
}
