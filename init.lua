require("core.init")

vim.g.mapleader=" "
vim.wo.number=true
vim.o.mouse='a'
vim.o.termguicolors=true
vim.opt.pastetoggle='<F4>'
vim.opt.scrolloff=10
vim.opt.encoding='UTF-8'
vim.opt.cursorline=true
vim.cmd [[colorscheme gruvbox]]
vim.cmd [[set pastetoggle=<F4>]]
local options = { noremap = true }



vim.keymap.set('n', '<C-t>', ":NERDTreeToggle")
vim.keymap.set("i", "jk", "<Esc>", options)
vim.keymap.set("n", "<S-t>", ":!start cmd<CR>", options)

vim.keymap.set("n", "<F5>", ":source $MYVIMRC<CR>", options)
vim.keymap.set("n", "<F12>", ":vsplit $MYVIMRC<CR>", options)

-- Moving selected text up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("x", "<leader>p", [["_dP]])

-- Navigating between buffers using shift+h/l
vim.keymap.set("n", "<S-h>",":bprevious<CR>")
vim.keymap.set("n", "<S-l>",":bnext<CR>")


vim.keymap.set("n", "<F8>",":tabnext<CR>")
vim.keymap.set("n", "<F7>",":tabprevious<CR>")
vim.keymap.set("n", "<Leader>n",":tabnew<CR>")

-- Yanking to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+Y]])
-- vim.keymap.set("n", "<leader>Y", [["+Y]])


-- Search vim.opt.ings 
-- vim.opt.incsearch=true
-- vim.opt.nohlsearch=true

-- Coc Config
-- vim.opt.updatetime=500
-- vim.opt.signcolumn=yes
-- vim.opt.nobackup=true

vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)

    use 'wbthomason/packer.nvim'
    use 'morhetz/gruvbox' -- " Gruvbox ColorScheme
    use 'tpope/vim-commentary' -- For Commenting gcc & gc
    use 'ctrlpvim/ctrlp.vim' -- " fuzzy find files
    use { -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    requires = {
	    -- Automatically install LSPs to stdpath for neovim
	    'williamboman/mason.nvim',
	    'williamboman/mason-lspconfig.nvim',

	    -- Useful status updates for LSP
	    'j-hui/fidget.nvim',

	    -- Additional lua configuration, makes nvim stuff amazing
	    'folke/neodev.nvim',
    },
  }

    use { -- Autocompletion
    'hrsh7th/nvim-cmp',
    requires = { 'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip' },
  }

    -- use 'neoclide/coc.nvim', -- {'branch': 'release'}
    use 'christoomey/vim-tmux-navigator' -- " Ctrl-l and Ctrl-h left and right in split
    use 'rhysd/vim-clang-format' -- " Formatting c/c++ code
    use 'windwp/nvim-autopairs' -- " For creating pair of opening and closing backets
    use 'tpope/vim-surround' -- " Surrounding ysw)
    use 'scrooloose/nerdtree' -- " NERDTree
    use { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    run = function()
      pcall(require('nvim-treesitter.install').update { with_sync = true })
    end,
  }

    -- Fuzzy Finder (files, lsp, etc)
  use { 'nvim-telescope/telescope.nvim', branch = '0.1.x', requires = { 'nvim-lua/plenary.nvim' } }

  -- Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make', cond = vim.fn.executable 'make' == 1 }
 
 end)

