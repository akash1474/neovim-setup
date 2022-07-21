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


call plug#begin('~/.config/nvim/plugged') 

"Theme Plugins
Plug 'joshdick/onedark.vim' " One Dark
Plug 'morhetz/gruvbox' " Gruvbox
Plug 'sonph/onehalf', { 'rtp': 'vim' } " One Half
Plug 'https://github.com/lifepillar/vim-solarized8.git' " Solarized
Plug 'drewtempelmeyer/palenight.vim' " Palenight
Plug 'ayu-theme/ayu-vim' " Ayu
Plug 'mhartington/oceanic-next' " OceanicNext
Plug 'tomasr/molokai' " Monokai
Plug 'kaicataldo/material.vim', { 'branch': 'main' } " Material 
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Multiple Color Schemes eg One

" Flutter
" Plug 'dart-lang/dart-vim-plugin' " dart highlighting
" Plug 'thosakwe/vim-flutter' " flutter support 
" Plug 'iamcco/coc-flutter' " coc Flutter

Plug 'yuttie/comfortable-motion.vim' " Smooth Scrolling
Plug 'yggdroot/indentline' " Indent Line Vertical 
Plug 'christoomey/vim-tmux-navigator' " Ctrl-l and Ctrl-h left and right in split
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'davidhalter/jedi-vim' " For Python Support
Plug 'zchee/deoplete-jedi'
Plug 'tpope/vim-fugitive' " :Git => to perform git commands
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'scrooloose/nerdtree' " NERDTree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " NERDTree
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'ryanoasis/vim-devicons' " File Icons
Plug 'https://github.com/ap/vim-css-color' " CSS Highlight
Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'majutsushi/tagbar' "Tagbar for code navidation
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'prettier/vim-prettier' " Prettier file format on save
Plug 'sbdchd/neoformat' " Python Code Formatting
Plug 'cakebaker/scss-syntax.vim' " Sass syntax highlight
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'mxw/vim-jsx' " JSX Syntax
" Plug 'junegunn/fzf' " File Finder
" Plug 'tsony-tsonev/nerdtree-git-plugin'
" Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'airblade/vim-gitgutter'
" Plug 'octol/vim-cpp-enhanced-highlight' " C++ Syntax Highlighting
Plug 'bfrg/vim-cpp-modern' " C++ Syntax Highlighting

call plug#end()

let g:enable_cp=0

" Smooth Scrolling Setting
let g:comfortable_motion_no_default_key_mappings = 1
let g:comfortable_motion_impulse_multiplier = 1  " Feel free to increase/decrease this value.
let g:cpp_attributes_highlight = 1
let g:cpp_member_highlight = 1
let g:cpp_simple_highlight = 1

" let g:cpp_concepts_highlight = 1

:command Make !g++ % -o main && main 

nnoremap <silent> <C-d> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * 2)<CR>
nnoremap <silent> <C-u> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * -2)<CR>
nnoremap <silent> <C-f> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * 4)<CR>
nnoremap <silent> <C-b> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * -4)<CR>




" Indent Line Config
" let g:indentLine_char = '¦'
" let g:indentLine_color_gui = '#ffffff'
" let g:indentLine_bgcolor_gui = '#FF5F00'

tnoremap jk <C-\><C-n>   
inoremap jk <ESC>

syntax on
set t_Co=256
set cursorline

colorscheme gruvbox " material molokai OceanicNext palenight ayu one gruvbox onehalf onedark solarized8 _high _low _flat
let g:airline_theme='onehalfdark' "gruvbox palenight one onehalfdark
set background =dark  " light/dark



" let g:material_theme_style="ocean"
" let g:molokai_original = 1

" This line enables the true color support.
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

nnoremap <M-f>    :%!astyle<CR>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>






" nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR><F5>
nnoremap <C-t> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
nnoremap <F6> :TerminalSplit bash<CR>
nnoremap <F9> :terminal <CR>

" Tabbing
nnoremap <F7> :tabp <CR>
nnoremap <F8> :tabn <CR>
nnoremap <F3> :b# <CR>

nnoremap <F12> :vsplit $MYVIMRC <CR> "Opening init.vim file
nnoremap <F5> :source $MYVIMRC <CR> " Reloading init.vim file 
" Tagbar Setting
nmap <F1> :TagbarToggle<CR>
" let g:tagbar_ctags_bin="~/.config/nvim/ctags"
" type \s  and the word with which the all the instance of the current word
" should be replace
imap ,t <Esc>:tabnew<CR>
nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>

let g:NERDTreeGitStatusWithFlags = 1

let g:NERDTreeIgnore = ['^node_modules$']

command! -nargs=0 Prettier :CocCommand prettier.formatFile
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Prettier Settings
let g:prettier#exec_cmd_async = 1

" Flutter Settings
" nnoremap <leader>fa :FlutterRun<cr>
" nnoremap <leader>fq :FlutterQuit<cr>
" nnoremap <leader>fr :FlutterHotReload<cr>
" nnoremap <leader>fR :FlutterHotRestart<cr>
" nnoremap <leader>fD :FlutterVisualDebug<cr>


noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')


function! IsNERDTreeOpen()        
	  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction


function! SyncTree()
	if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
		NERDTreeFind
		wincmd p
	endif
endfunction

let g:previous_window = -1
function SmartInsert()
	  if &buftype == 'terminal'
			    if g:previous_window != winnr()
						  startinsert
					endif
					let g:previous_window = winnr()
		else
					let g:previous_window = -1
		endif
endfunction
au BufEnter * call SmartInsert()

"coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-python',
  \ 'coc-json', 
  \ 'coc-flutter',
  \ 'coc-snippets',
  \ 'coc-yaml',
  \ 'coc-tslint-plugin',
  \ 'coc-tsserver',
  \ 'coc-emmet',
  \ 'coc-css',
  \ 'coc-html',
  \ 'coc-json',
  \ ]

set hidden
"set updatetime=300

set shortmess+=c

"set signcolumn=yes


inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
	  let col = col('.') - 1
	  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"


" Use `[g` and `]g` to navigate diagnostics
 nmap <silent> [g <Plug>(coc-diagnostic-prev)
 nmap <silent> ]g <Plug>(coc-diagnostic-next)
"
"Remap keys for gotos
 nmap <silent> gd <Plug>(coc-definition)
 nmap <silent> gy <Plug>(coc-type-definition)
 nmap <silent> gi <Plug>(coc-implementation)
 nmap <silent> gr <Plug>(coc-references)
"
" " Use K to show documentation in preview window
 nnoremap <silent> K :call <SID>show_documentation()<CR>
"
 function! s:show_documentation()
   if (index(['vim','help'], &filetype) >= 0)
       execute 'h '.expand('<cword>')
   else
        call CocAction('doHover')
   endif
 endfunction

" Highlight symbol under cursor on CursorHold
 autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <F2> <Plug>(coc-rename)


xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
	autocmd!
	" Setup formatexpr specified filetype(s).
	autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
	" Update signature help on jump placeholder
	autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end


" Create mappings for function text object, requires document symbols feature
" of languageserver.
 xmap if <Plug>(coc-funcobj-i)
 xmap af <Plug>(coc-funcobj-a)
 omap if <Plug>(coc-funcobj-i)
 omap af <Plug>(coc-funcobj-a)



" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand','editor.action.organizeImport')

set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

