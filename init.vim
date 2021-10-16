"Basics
syntax enable
filetype off
set autoindent
set tabstop=2
set softtabstop=2 
set shiftwidth=2
set expandtab
set number
set relativenumber
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch
set nowrap 
set foldenable
set foldlevelstart=99
set foldnestmax=99
set foldmethod=indent
set list
set lcs=tab:▸\ ,eol:¬,trail:⋯
set nocompatible
set termguicolors
set encoding:UTF-8
set foldenable
set foldlevelstart=99
set foldnestmax=99
set foldmethod=indent

"Install Plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim' if empty(glob(data_dir . '/autoload/plug.vim')) silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim' autocmd VimEnter * PlugInstall --sync | source $MYVIMRC endif

"Plugins call 
call plug#begin('~/.local/share/nvim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'idris-hackers/idris-vim'
Plug 'kamwitsta/nordisk'
Plug 'kamwitsta/mythos'
Plug 'Shougo/deoplete.nvim'
Plug 'Shougo/deoplete-clangx'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'neomake/neomake'
Plug 'scrooloose/nerdtree'
Plug 'Raimondi/delimitMate'
Plug 'phanviet/Sidonia'
Plug 'arcticicestudio/nord-vim'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'jvoorhis/coq.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-latex/vim-latex'
Plug 'wlangstroth/vim-racket'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'dense-analysis/ale'
Plug 'alx741/vim-hindent'
Plug 'airblade/vim-gitgutter'
Plug 'neovimhaskell/nvim-hs.vim'
Plug 'arbitary/haskell-comment-vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'Yggdroot/indentline'
call plug#end()


"Deoplete
let g:deoplete#enable_at_startup=1

"QOL
inoremap jj <Esc>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <space><leader> :NERDTreeToggle<CR>
autocmd FileType idris setlocal ts=2 sts=2
set laststatus=2
set noshowmode
nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>
nnoremap gR gD:%s/<C-R>///gc<left><left><left>
set cursorline
set cursorcolumn
set colorcolumn=80

"Presentation
colorscheme nord
hi Normal guibg=None

"DevIcons
let g:airline_powerline_fonts=1

"MarkdownPreview using grip
let vim_markdown_preview_github=1

"Terminal Mode
tnoremap <Esc> <C-\><C-n>
tnoremap jj <C-\><C-n>
"Launch termial in a new tab using basic bash
nnoremap <space><space><leader> :tabedit term://bash<CR>
"For Mac Iterm2 and General ZSH use
"nnoremap <space><space><leader> :tabedit term://zsh<CR>

"Rainbow Parens
augroup rainbow_lisp
  autocmd!
  autocmd FileType lisp,clojure,racket,scheme,idris,haskell RainbowParentheses

""""Haskell Stuff
"ALE Linter Fix for Haskell
let g:ale_linters = {
      \ 'haskell' : ['stack-ghc', 'stack-build', 'floskell', 'hlint', 'hdevtools', 'hfmt', 'stylish-haskell', 'trim-whitespace'],
      \}
""Haskell commeter
let g:enable_hs_comment_bindings = 2
