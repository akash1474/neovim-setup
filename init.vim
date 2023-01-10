set relativenumber
set smarttab
set cindent
set tabstop=6
set shiftwidth=4
set number
set autoindent
set mouse=a
set termguicolors
set pastetoggle=<F4>
set scrolloff=10
set encoding=UTF-8
set cursorline

call plug#begin("C:/Users/Akash Pandit/AppData/Local/nvim/plugged")

Plug 'morhetz/gruvbox' " Gruvbox ColorScheme
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'bfrg/vim-cpp-modern' " C++ Syntax Highlighting
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'christoomey/vim-tmux-navigator' " Ctrl-l and Ctrl-h left and right in split
Plug 'rhysd/vim-clang-format'
Plug 'windwp/nvim-autopairs'
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'scrooloose/nerdtree' " NERDTree
Plug 'tiagofumo/vim-nerdtree-syntax-highlighting' " NERDTree Syntax Highlighting

call plug#end()


colorscheme gruvbox " Setting the colorscheme
syntax on
set t_Co=256


" Key Mappings
tnoremap jk <C-\><C-n>   
inoremap jk <ESC>
map <Space> <Leader>

" Opening init.vim file
nnoremap <F12> :vsplit $MYVIMRC <CR> 
" Reloading init.vim file 
nnoremap <F5> :source $MYVIMRC <CR> 
" Use alt + h resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" Moving selected lines with J K
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Better tabbing
vnoremap < <gv
vnoremap > >gv


" Shift + l/h in general mode will move to text buffer
nnoremap <S-l> :bnext<CR>
nnoremap <S-h> :bprevious<CR>


:command Make !g++ -std=c++17 -g -Wall % -o main && main 
:command MakeClean !del main 
:command CMD !start cmd


" Auto Pair  Plugin Setting
lua << EOF
require("nvim-autopairs").setup {}
EOF
