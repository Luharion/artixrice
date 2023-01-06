        -- require for plugins
require'lspconfig'.pyright.setup{}
require("autoclose").setup({})

-- basic files
require('settings')
require('plugins')
require('mappings')
require('colors.catppuccin')

-- Plugin config
--require('config.nvim-tree')
require('config.dashboard')
--require('config.cmp-cmdline')
require('config.lualine')
require('config.colorizer')
require('config.barbar')
require('config.telescope')
require('config.indent-line')
--require('config.comment')
--require('config.toggleterm')
--require('config.snippets')
require("config.cmp-cmdline")
--require('config.which-key')
--require('config.session_manager')-
--require('config.which-key')
require('config.indent')
require('lsp-config.lanaguage-servers')
require('lsp-config.nvim-cmp')
require('config.mason')
