set nocompatible " keep things vim and not vi. Required for some plugins
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'iamcco/markdown-preview.nvim'

call vundle#end()
filetype plugin indent on

" Whitespace
set nowrap                  " Default to not wrap lines of text
set textwidth=90            " Force line to stay withing # characters based on whitespace
" set colorcolumn=90          " Visual line of where textwidth is
set shiftwidth=4            " Number of spaces to use for each step of (auto)indent
set tabstop=4               " Number of spaces a tab counts for
set expandtab               " Turn tabs into spaces
set smarttab
set smartindent
"set formatoptions=tcqrn1j   " Auto formating options - see :help fo-table

set noswapfile

set scrolloff=5
set number                  " Line numbers
set relativenumber          " Have line numbers show line distance from cursor
set ruler                   " Show line, col number. Defaults to bottom right
set hlsearch                " Highlight searches

colorscheme zaibatsu

" Search down into subfolders, provide tab completion
" use :find with a * to make it a fuzzy finder for file names
set path+=**
set wildmenu

"make tags file for the current directory 
command! MakeTags !ctags -R .

" Browsing files settings
let g:netrw_banner=0        "disable annoying banner

syntax on
set smartcase
set history=1000
set cmdheight=2

"toggle relative line numbers with ctrl-l
nnoremap <C-l> :set rnu!<CR> 

let g:mapleader = " "
inoremap kj <esc>
nnoremap ,s :source ~/.vimrc<CR>
nnoremap <leader>d :r !date -I<CR>kJ
nnoremap <leader>i hello<esc> 2025-06-29

