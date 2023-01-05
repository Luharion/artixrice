local set = vim.opt
vim.notify = require("notify")
vim.g.mapleader = ','
set.number = true
set.relativenumber = true
set.spell = false
set.signcolumn = "auto"
set.wrap = false 
set.incsearch = true
set.scrolloff = 5
set.fileencoding = 'utf-8'
set.termguicolors = true
set.hidden = true
set.cursorline = true
set.splitbelow = true
set.splitright = true
set.tabstop = 4
set.smarttab = true
set.expandtab = true
vim.cmd('filetype plugin indent on')
vim.cmd('syntax enable')
vim.g.vimtex_view_method = "zathura"
vim.g.vimwiki_list = {{path = '~/.local/share/nvim/vimwiki', syntax = 'markdown', ext = '.md'}}
