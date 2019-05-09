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

"Plugins
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
set spell

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
"Launch termial in a new tab
nnoremap <space><space><leader> :tabedit term://bash<CR>
