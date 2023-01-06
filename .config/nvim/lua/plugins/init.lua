local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'nvim-lualine/lualine.nvim'
  use 'romgrk/barbar.nvim'
  use 'rcarriga/nvim-notify'
  use 'goolord/alpha-nvim'
  use 'glepnir/dashboard-nvim'
  use 'm4xshen/autoclose.nvim'
  use 'windwp/nvim-ts-autotag'
  use 'antoinemadec/FixCursorHold.nvim'
  use 'norcalli/nvim-colorizer.lua'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'williamboman/mason.nvim'
  use 'MunifTanjim/nui.nvim'
  use 'nvim-neo-tree/neo-tree.nvim'
  use 'akinsho/bufferline.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'Darazaki/indent-o-matic'
  use 'mrjones2014/smart-splits.nvim'
  use 'hrsh7th/cmp-cmdline'
  use 'vimwiki/vimwiki'
  use "windwp/nvim-autopairs"
  use 'lervag/vimtex'
	use "neovim/nvim-lspconfig" --> Collection of configurations for built-in LSP client
	use "jose-elias-alvarez/null-ls.nvim" --> inject lsp diagnistocs, formattings, code actions, and more ...
  use 'jayp0521/mason-null-ls.nvim'
	use "tami5/lspsaga.nvim" --> icons for LSP diagnostics
	use "onsails/lspkind-nvim" --> vscode-like pictograms for neovim lsp completion items
use 'rafamadriz/friendly-snippets'
	use "hrsh7th/nvim-cmp" --> Autocompletion plugin
	use "williamboman/nvim-lsp-installer" --> Companion plugin for lsp-config, allows us to seamlesly install language servers
	use "hrsh7th/cmp-nvim-lsp" --> LSP source for nvim-cmp
	use "saadparwaiz1/cmp_luasnip" --> Snippets source for nvim-cmp
	use "L3MON4D3/LuaSnip" --> Snippets plugin'norcalli/nvim-colorizer.lua'
  use 'rhysd/vim-grammarous'
	--> treesitter & treesitter modules/plugins
	use ({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }) --> treesitter
	use "nvim-treesitter/nvim-treesitter-textobjects" --> textobjects
	use "p00f/nvim-ts-rainbow"
	use "nvim-treesitter/playground"
	use "JoosepAlviste/nvim-ts-context-commentstring"
	use "nvim-neorg/neorg"
use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use {"catppuccin/nvim", as = "catppuccin"}


  if packer_bootstrap then
    require('packer').sync()
  end
end)
