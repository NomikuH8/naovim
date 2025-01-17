return {
  'hrsh7th/nvim-cmp',

  dependencies = {
    'neovim/nvim-lspconfig',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-nvim-lsp-document-symbol',
    'hrsh7th/cmp-nvim-lsp-signature-help',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',

    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
  },

  init = function ()
    local cmp = require("cmp")
    cmp.setup({
      snippet = {
        expand = function (args)
          require("luasnip").lsp_expand(args.body)
        end
      },

      mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
      }),

      sources = cmp.config.sources({
        { name = 'nvim_lsp_signature_help' },
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
      }, {
        { name = 'buffer' },
      }),

    })

    cmp.setup.cmdline('/', {
      sources = cmp.config.sources({
        { name = 'nvim_lsp_document_symbol' },
      }, {
        { name = 'buffer' }
      })
    })

    cmp.setup.cmdline({ '/', '?' }, {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = 'buffer' }
      }
    })

    cmp.setup.cmdline(':', {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({
        { name = 'path' }
      }, {
        { name = 'cmdline' }
      }),
      matching = {
        disallow_symbol_nonprefix_matching = false,
        disallow_fuzzy_matching = false,
        disallow_fullfuzzy_matching = false,
        disallow_partial_matching = false,
        disallow_prefix_unmatching = false,
        disallow_partial_fuzzy_matching = false
      }
    })
  end
}
-- return {
--   'saghen/blink.cmp',
--   -- optional: provides snippets for the snippet source
--   dependencies = 'rafamadriz/friendly-snippets',
--
--   -- use a release tag to download pre-built binaries
--   version = '*',
--   -- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
--   -- build = 'cargo build --release',
--   -- If you use nix, you can build from source using latest nightly rust with:
--   -- build = 'nix run .#build-plugin',
--
--   ---@module 'blink.cmp'
--   ---@type blink.cmp.Config
--   opts = {
--     -- 'default' for mappings similar to built-in completion
--     -- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys to navigate)
--     -- 'enter' for mappings similar to 'super-tab' but with 'enter' to accept
--     -- See the full "keymap" documentation for information on defining your own keymap.
--     keymap = {
--       preset = 'default',
--
--       ['<Up>'] = { 'select_prev', 'fallback' },
--       ['<Down>'] = { 'select_next', 'fallback' },
--       ['<Right>'] = { 'show_documentation', 'fallback' },
--       ['<Left>'] = { 'hide_documentation', 'fallback' },
--
--       ['<CR>'] = { 'accept', 'fallback' },
--     },
--
--     signature = { enabled = true },
--
--     completion = {
--       list = {
--         selection = { preselect = false, auto_insert = false },
--       },
--     },
--
--     appearance = {
--       -- Sets the fallback highlight groups to nvim-cmp's highlight groups
--       -- Useful for when your theme doesn't support blink.cmp
--       -- Will be removed in a future release
--       use_nvim_cmp_as_default = true,
--       -- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
--       -- Adjusts spacing to ensure icons are aligned
--       nerd_font_variant = 'mono'
--     },
--
--     -- Default list of enabled providers defined so that you can extend it
--     -- elsewhere in your config, without redefining it, due to `opts_extend`
--     sources = {
--       default = { 'lsp', 'path', 'snippets', 'buffer' },
--     },
--   },
--   opts_extend = { "sources.default" }
-- }
--
