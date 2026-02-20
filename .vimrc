"==================================================================================================== 
" VIMRC
"==================================================================================================== 
set nocompatible " keep things vim and not vi. Required for some plugins

"==================================================================================================== 
" Plugins
"   currently using vim plug - https://github.com/junegunn/vim-plug
"   run :PlugInstall after adding plugin
"   reminder to every now and then run :PlugUpdate
"==================================================================================================== 
call plug#begin('~/.vim/bundle/')

Plug 'iamcco/markdown-preview.nvim'                 " Live markdown preview
Plug 'tpope/vim-fugitive'                           " Git Integration
Plug 'tpope/vim-commentary'                         " Commenting in vim style gc<motion>
                                                    " to add unsupported filetype:
                                                    " autocmd FileType apache setlocal commentstring=#\ %s
Plug 'tpope/vim-repeat'                             " use . with plugin commands
Plug 'tpope/vim-surround'                           " cs ds yss become a surround mapping
Plug 'junegunn/fzf'                                 " fuzzy finder
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'                           " better file explorer than netrw 
Plug 'catppuccin/vim', { 'as': 'catppuccin' }       " Nice Pastel Color Themes

call plug#end()
"░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ 
"░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ 



"==================================================================================================== 
" Typical .vimrc Setup
"==================================================================================================== 
" Whitespace
set nowrap                  " Default to not wrap lines of text
set shiftwidth=4            " Number of spaces to use for each step of (auto)indent
set tabstop=4               " Number of spaces a tab counts for
set expandtab               " Turn tabs into spaces
set smarttab                " Tab will go by shiftwidth value
set smartindent             " auto indent based on c like syntax

" Default View Options
set number                  " Line numbers
set relativenumber          " Have line numbers show line distance from cursor
set ruler                   " Show line, col number. Defaults to bottom right
set hlsearch                " Highlight searches
set encoding=utf-8          
set wildmenu                " See tab through selection in CMD mode

set smartcase               " make searches ignore case unless you search with
                            " an uppercase

set scrolloff=5             " Keep # lines on screen when scrolling
                            " for always centered cursor make the number very
                            " large

set cmdheight=2             " set the CMD mode height to be 2 lines
                            " I'm forgetting which thing needs this but this
                            " is here so something below doesn't break the
                            " expected CMD display

" Browsing Files Settings for Netrw builtin plugin
let g:netrw_banner=0        "disable annoying banner for Netrw file browser

" Misc options
set history=1000            " number of CMD history commands to store
set noswapfile              " disable annoying swap files 
"░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ 
"░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ 



"==================================================================================================== 
" Advanced .vimrc Settup
"==================================================================================================== 
" Search down into subfolders, provide tab completion
" use :find with a * to make it a fuzzy finder for file names
set path+=**

"make tags file for the current directory 
command! MakeTags !ctags -R .
"░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ 
"░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ 



"==================================================================================================== 
" Key Binds - Native Vim
"==================================================================================================== 
" Set <Leader> key
" Others like to have leader be set to ','
" I like having my leader key be space
let mapleader = " "

" Map kj to be escape key in insert and command mode
" Helps so I don't have to reach for the esc key
inoremap kj <esc>
cnoremap kj <esc> 

" Keybinds to make commands quicker
    " Quick source vimrc with ,s
    " helpful to not have to quit and reenter vim to check changes 
    nnoremap ,s :source ~/.vimrc<CR>     

    " faster way to save with leader w
    nnoremap <Leader>w :w<CR>           

    " faster way to save with leader q
    nnoremap <Leader>q :q<CR>           

    " vim tip - Shift-ZZ is already a default vim way to quickly :wq 

" Viewing toggles 
    " toggle relative line numbers with ctrl-l
    nnoremap <C-l> :set rnu!<CR> 

    " toggle spell checking with ctrl-s
    " for how to use spellchecker run :help spell
    nnoremap <C-s> :set spell!<CR> 

" tt to fullscreen a buffer in screen split into a tab. ZZ to write & exit
nnoremap tt :tab split<CR>  

" test mappings 
" not used but inserts date at the beginning of the line with leader d
nnoremap <leader>d :r !date -I<CR>

" Add mapping for auto closing characters in the style of IDEs
" this may become obsolete with a plugin
imap "<tab> ""<Left>
imap '<tab> ''<Left>
imap (<tab> ()<Left>
imap [<tab> []<Left>
imap {<tab> {}<Left>
imap {<CR> {<CR>}<ESC>O
imap {;<CR> {<CR>};<ESC>O
"░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ 
"░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ 



"==================================================================================================== 
" Catppuccin [Plugin] - Color Theme for Vim
"==================================================================================================== 
set termguicolors
set background=dark

let g:catppuccin_flavour = 'mocha'   " latte, frappe, macchiato, mocha
let g:lightline = {'colorscheme': 'catppuccin_mocha'}
"░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ 
"░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ 



"==================================================================================================== 
" FZF [Plugin] - Fuzzy finding in vim
"       FZF requires you to have the following installed in your shell
"           fzf (the terminal version of fzf)
"           ripgrep (faster version of grep command)
"           fd (a nicer version of find command)
"           bat (a nicer version of cat command)
"==================================================================================================== 
" Centered pop-up (box-style) for fzf
let g:fzf_layout = { 'window': { 'width': 0.95, 'height': 0.90 } }

" preview above search, toggle with Ctrl-/
let g:fzf_preview_window = ['up:75%', 'ctrl-/']  

" Windows terminal with WSL needed these to show the syntax highlighting inside the preview window
let $BAT_THEME='TwoDark'
let $FZF_DEFAULT_OPTS = '--border --margin=1'
let g:fzf_files_options = '--preview "/usr/local/bin/bat --style=numbers --color=always --line-range=:200 {}"'
"░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ 
"░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ 



"==================================================================================================== 
" YouCompleteMe [Plugin] - Code Completions
"==================================================================================================== 
" Options - 
"   menuone - still show menu if there is only 1 completion
"   noinsert - don't auto insert first completion
"   noselect - don't auto highlight first selection
set completeopt=menuone,noinsert,noselect

" hide match command line print while using
set shortmess+=c

" start suggestions as soon as you start typing
let g:ycm_min_num_of_chars_for_completion = 1

" Make sure ~/.cargo/bin is visible inside Vim
let $PATH = expand('~/.cargo/bin') . ':' . $PATH
" " Prefer your rustup rust-analyzer over the bundled one
let g:ycm_rust_analyzer_binary_path = expand('~/.cargo/bin/rust-analyzer')
"░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ 
"░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ 



"==================================================================================================== 
" Key Binds for Plugins
"==================================================================================================== 
" FZF keybinds
    " <Leader>ff - open fuzzy file finder
    nnoremap <silent> <leader>ff :Files<CR>

    " <Leader>fg - open fuzzy file grep search
    nnoremap <silent> <leader>fg :Rg<CR>

    " <Leader>fb - open fuzzy file finder for open buffers
    nnoremap <silent> <leader>fb :Buffers<CR>

    " <Leader>fh - open fuzzy help search
    nnoremap <silent> <leader>fh :Helptags<CR>

" YCM keybinds
    " Navigation 
    " <leader>gd for go to definition 
    nnoremap <silent> <leader>gd :YcmCompleter GoTo<CR>

    " <leader>gr for go to references 
    nnoremap <silent> <leader>gr :YcmCompleter GoToReferences<CR>

    " <leader>ty gives info on type
    nnoremap <silent> <leader>ty :YcmCompleter GetType<CR>

    " <leader>fi Quick fix
    nnoremap <silent> <leader>fi :YcmCompleter FixIt<CR>

    nnoremap <silent> <Leader>d <plug>(YCMHover)

" NERDTree keybinds
    " Open/close NerdTree
    nnoremap <silent> <Leader>nt :NERDTreeToggle<CR>
"░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ 
"░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ 

