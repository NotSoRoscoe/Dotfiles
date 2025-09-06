set nocompatible " keep things vim and not vi. Required for some plugins
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'iamcco/markdown-preview.nvim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

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

" toggle relative line numbers with ctrl-l
nnoremap <C-l> :set rnu!<CR> 

let mapleader = " "

" Map kj as escape character for ease
inoremap kj <esc>
cnoremap kj <esc> 

nnoremap ,s :source ~/.vimrc<CR>
nnoremap <Leader>w :w<CR>           " faster way to save
nnoremap <Leader>q :q<CR>           " faster way to quit
nnoremap tt :tab split<CR>          " tt to fullscreen a split into a tab. ZZ to write & exit

" test mappings
nnoremap <leader>d :r !date -I<CR>

" Centered popup (box-style) for fzf
"let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }
"let g:fzf_preview_window = ['right:60%', 'ctrl-/']  " preview on Right, toggle with Ctrl-/

" Use a border around the box (fzf flag picked up inside Vim too)
"et $FZF_DEFAULT_OPTS = '--border --margin=1'
" Better fzf layout for vertical monitors
" Vim-compatible centered popup
let g:fzf_layout = { 'window': { 'width': 0.95, 'height': 0.90 } }
let g:fzf_preview_window = ['up:75%', 'ctrl-/']  " preview above, toggle with Ctrl-/

let $BAT_THEME='TwoDark'
let $FZF_DEFAULT_OPTS = '--border --margin=1'
let g:fzf_files_options = '--preview "bat --style=numbers --color=always --line-range=:200 {}"'


nnoremap <leader>ff :Files<CR>


