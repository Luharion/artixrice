local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true}
local maps = { i = {}, n = {}, v = {}, t = {} }
vim.g.mapleader = ','
vim.g.maplocalleader = ','

--Standard Operations
maps.n["<leader>w"] = { "<cmd>w<cr>", desc = "Save" }
maps.n["<leader>q"] = { "<cmd>q<cr>", desc = "Quit" }
maps.n["<C-s>"] = { "<cmd>w!<cr>", desc = "Force write" }
maps.n["<C-q>"] = { "<cmd>q!<cr>", desc = "Force quit" }
maps.n["<leader>h"] = { "<cmd>nohlsearch<cr>", desc = "No Highlight" } -- TODO: REMOVE IN v3
maps.n["<leader>fn"] = { "<cmd>enew<cr>", desc = "New File" }

-- NvimTree
map('n', '<leader>t', ":NvimTreeToggle<CR>", opts)
map('n', '<leader>f', ":NvimTreeFocus<CR>", opts)

--barbar 
-- Move to previous/next
map('n', '<A-h>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-l>', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)
-- Pin/unpin buffer
map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
map('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used


-- telescope map('n', "<leader>ff", ":Telescope find_files<CR>", opts)
map('n', "<leader>fg", ":Telescope live_grep<CR>", opts)


--Packer
map('n', "<leader>pc", ":PackerCompile<CR>", opts)
map('n', "<leader>pu", ":PackerUpdate<CR>", opts)
map('n', "<leader>pi", ":PackerInstall<CR>", opts)
map('n', "<leader>ps", ":PackerSync<CR>", opts)
map('n', "<leader>pS", ":PackerStatus<CR>", opts)

--terminal 
map('n', "<leader>th", ":ToggleTerm size=10 direction=horizontal<CR>", opts)
map('n', "<leader>tv", ":ToggleTerm size=80 direction=vertical<CR>", opts)

-- Smart Split
  maps.n["<C-h>"] = { function() require("smart-splits").move_cursor_left() end, desc = "Move to left split" }
  maps.n["<C-j>"] = { function() require("smart-splits").move_cursor_down() end, desc = "Move to below split" }
  maps.n["<C-k>"] = { function() require("smart-splits").move_cursor_up() end, desc = "Move to above split" }
  maps.n["<C-l>"] = { function() require("smart-splits").move_cursor_right() end, desc = "Move to right split" }

  -- Resize with arrows
  maps.n["<C-Up>"] = { function() require("smart-splits").resize_up() end, desc = "Resize split up" }
  maps.n["<C-Down>"] = { function() require("smart-splits").resize_down() end, desc = "Resize split down" }
  maps.n["<C-Left>"] = { function() require("smart-splits").resize_left() end, desc = "Resize split left" }
  maps.n["<C-Right>"] = { function() require("smart-splits").resize_right() end, desc = "Resize split right" }

-- Alpha
maps.n["<leader>d"] = { function() require("alpha").start() end, desc = "Alpha Dashboard" }

    maps.n["<leader>c"] = { function() require("bufdelete").bufdelete(0, false) end, desc = "Close buffer" }
    maps.n["<leader>C"] = { function() require("bufdelete").bufdelete(0, true) end, desc = "Force close buffer" }
maps.n["<leader>c"] = { "<cmd>bdelete<cr>", desc = "Close buffer" }
maps.n["<leader>C"] = { "<cmd>bdelete!<cr>", desc = "Force close buffer" }

  -- Navigate buffers
    maps.n["<S-l>"] = { "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer tab" }
    maps.n["<S-h>"] = { "<cmd>BufferLineCyclePrev<cr>", desc = "Previous buffer tab" }
    maps.n[">b"] = { "<cmd>BufferLineMoveNext<cr>", desc = "Move buffer tab right" }
    maps.n["<b"] = { "<cmd>BufferLineMovePrev<cr>", desc = "Move buffer tab left" }
    maps.n["<S-l>"] = { "<cmd>bnext<cr>", desc = "Next buffer" }
    maps.n["<S-h>"] = { "<cmd>bprevious<cr>", desc = "Previous buffer" }

-- Navigate tabstop
map('n', ']t', ":tabnext<CR>", opts)
map('n', '[t', ":tabprevious<CR>", opts)

 maps.n["<leader>pI"] = { "<cmd>Mason<cr>", desc = "Mason Installer" }
  maps.n["<leader>pU"] = { "<cmd>MasonUpdateAll<cr>", desc = "Mason Update" }









