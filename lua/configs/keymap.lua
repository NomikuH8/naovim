-- Map leader to ','
vim.g.mapleader = ','
vim.g.maplocalleader = ','

-- Shorten command
local map = vim.keymap.set

-- Command to keymap
-- map('', '', '', '')

-- Mode cheatsheet
-- "n" = normal
-- "i" = insert
-- "t" = terminal

-- There are keymaps in plugins/telescope.lua too

-- ToggleTerm
map('n', '<leader>t', ':ToggleTerm<CR>', { desc = 'Show Terminal' })

-- NeoTree
map('n', '<leader>n', ':Neotree toggle<CR>', { desc = 'Toggle Tree' })
map('n', '<leader>b', ':Neotree toggle buffers<CR>', { desc = 'Toggle Tree For Buffers' })

-- Bufferline
map('n', 'gj', ':BufferLineMovePrev<CR>', { desc = 'Move tab to next' })
map('n', 'gk', ':BufferLineMoveNext<CR>', { desc = 'Move tab to previous' })
map('n', 'gh', ':BufferLineCyclePrev<CR>', { desc = 'Go to previous tab' })
map('n', 'gl', ':BufferLineCycleNext<CR>', { desc = 'Go to next tab' })
map('n', 'gD', ':BufferLinePickClose<CR>', { desc = 'Select tab to close' })
map('n', 'gp', ':BufferLinePick<CR>', { desc = 'Select tab to go' })

