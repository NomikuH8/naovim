return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    config = function ()
      require('neo-tree').setup({
        close_if_last_window = false,
        enable_git_status = true,
        enable_diagnostics = true
      })
    end
}

