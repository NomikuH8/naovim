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

-- NvimTree
map('n', '<leader>n', ':NvimTreeToggle<CR>', { desc = 'Toggle Tree' })

-- Bufferline
map('n', 'gj', ':BufferLineMovePrev<CR>', { desc = 'Move tab to next' })
map('n', 'gk', ':BufferLineMoveNext<CR>', { desc = 'Move tab to previous' })
map('n', 'gh', ':BufferLineCyclePrev<CR>', { desc = 'Go to previous tab' })
map('n', 'gl', ':BufferLineCycleNext<CR>', { desc = 'Go to next tab' })
map('n', 'gD', ':BufferLinePickClose<CR>', { desc = 'Select tab to close' })
map('n', 'gp', ':BufferLinePick<CR>', { desc = 'Select tab to go' })

