require("configs.basic")
require("configs.clipboard")
require("configs.indent")
require("configs.keymap")
require("configs.numbers")
require("configs.search")
require("configs.tab")

-- lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Require
require("lazy").setup("plugins")

require("configs.theme")
