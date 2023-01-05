-- require for plugins
require('config.snippets')
require'lspconfig'.pyright.setup{}
require('impatient')

-- basic files
require('settings')
require('plugins')
require('mappings')
require('colors.catppuccin')

-- Plugin config
require('config.nvim-tree')
require('config.cmp-cmdline')
require('config.lualine')
require('config.colorizer')
require('config.barbar')
require('config.telescope')
require('config.comment')
require('config.toggleterm')
require('config.snippets')
--require("config.cmp")
require('config.which-key')
require('config.session_manager')
require('config.which-key')

require('config.indent')
--LSP
require('lsp-config.lanaguage-servers')
require('lsp-config.nvim-cmp')
require('config.mason')
