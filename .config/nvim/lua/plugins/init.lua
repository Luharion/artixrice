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
        use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}
use 'vimwiki/vimwiki'
use  'lervag/vimtex'
 use {
   "goolord/alpha-nvim",
    cmd = "Alpha",
    module = "alpha",
    config = function()
      require "config.alpha"
    end
  }

use {
  "Shatur/neovim-session-manager",
    module = "session_manager",
    cmd = "SessionManager",
    event = "BufWritePost",
    config = require "config.session_manager",
  }
  use {
    "folke/which-key.nvim",
    module = "which-key",
    config = function()
      require "config.which-key"
    end,
  }
use 'MunifTanjim/nui.nvim'
use 'JoosepAlviste/nvim-ts-context-commentstring'
use 'nvim-lua/popup.nvim'
use 'lewis6991/impatient.nvim'



use 'norcalli/nvim-colorizer.lua'
use 'kyazdani42/nvim-web-devicons'
use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
use 'rafamadriz/friendly-snippets'
use {"akinsho/toggleterm.nvim", tag = '*', config = function()
  require("toggleterm").setup()
end}
use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}
use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}
use 'Darazaki/indent-o-matic'
use 'mrjones2014/smart-splits.nvim'
use 'hrsh7th/cmp-cmdline'
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
  use    "williamboman/mason.nvim"
  use   "williamboman/mason-lspconfig.nvim"
use {'romgrk/barbar.nvim', wants = 'nvim-web-devicons'}
   use 'rcarriga/nvim-notify'
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}
	--> lsp
	use("neovim/nvim-lspconfig") --> Collection of configurations for built-in LSP client
	use("williamboman/nvim-lsp-installer") --> Companion plugin for lsp-config, allows us to seamlesly install language servers
	use("jose-elias-alvarez/null-ls.nvim") --> inject lsp diagnistocs, formattings, code actions, and more ...
	use("tami5/lspsaga.nvim") --> icons for LSP diagnostics
	use("onsails/lspkind-nvim") --> vscode-like pictograms for neovim lsp completion items
	use("hrsh7th/nvim-cmp") --> Autocompletion plugin
	use("hrsh7th/cmp-nvim-lsp") --> LSP source for nvim-cmp
use({"L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*"})
use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  },
  tag = 'nightly' -- optional, updated every week. (see issue #1193)
}
use { "catppuccin/nvim", as = "catppuccin" }
  -- My plugins here
  -- use 'foo1/bar1.nvim'
  -- use 'foo2/bar2.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
