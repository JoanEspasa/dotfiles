"
" My own personal setup.
"
" Vundle is a mature package manager for Vim: https://github.com/VundleVim/Vundle.vim
" Needs Vundle for installing some plugins.
"

" --------- basic defaults ---------------------------
set nocompatible " force sane defaults.
filetype off " let plugins handle that

" --------- Vundle init ------------------------------
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Have a nice powerline style, a-la oh-my-zsh in vim.
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugins config: vim-airline
let g:airline_theme = 'wombat'
let g:airline_powerline_fonts = 1

" Some Plugins to have a variety of color schemes
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'morhetz/gruvbox'
" " Gruvbox colorscheme specific vars
let g:gruvbox_italic=1 " italics for the gruvbox scheme
let g:gruvbox_contrast_dark = "soft"

" When you do searches will show you things like: Match 2 of 4 in the status line
Plugin 'henrik/vim-indexed-search'

" Show a git diff for each line on the left (https://github.com/airblade/vim-gitgutter)
Plugin 'airblade/vim-gitgutter'
let g:gitgutter_map_keys = 0 "Remove all mappings, not used

" Nice customized welcome page
Plugin 'mhinz/vim-startify'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" -------- Vim looks ----------------
" support 256 colors
set t_Co=256

" Gui font (macvim or gvim)
set guifont=NotoMonoForPowerline:h18

" " Colorscheme settings
" solarized, angr, alduin, happy_hacking, deus, afterglow are also good ones
colorscheme afterglow

" Always show bar, see https://github.com/vim-airline/vim-airline/issues/20 for details
set laststatus=2

" --------- Rest of Vim options ---------------------------
"
" ** autocompletion
filetype on
syntax on

" show existing tab with 4 spaces width
set tabstop=4

" when indenting with '>', use 4 spaces width
set shiftwidth=4

" On pressing tab, insert 4 spaces
set expandtab

" Show line number 
set number

" highlight search matches
set hlsearch

" use indentation of previous line
set autoindent

" use intelligent indentation for C
set smartindent

" highlight python syntax features
let python_highlight_all=1

" highlight matching braces
set showmatch

" File Tree Listing " https://shapeshed.com/vim-netrw/
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 20
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END
