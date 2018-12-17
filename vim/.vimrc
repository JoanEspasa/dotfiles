set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Vim theme like zsh powerline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Color schemes
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'morhetz/gruvbox'

" When you do searches will show you Match 2 of 4 in the status line"
Plugin 'henrik/vim-indexed-search'

" Show a git diff on the left (https://github.com/airblade/vim-gitgutter)
Plugin 'airblade/vim-gitgutter'

" Customized welcome page
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


" show existing tab with 4 spaces width
set tabstop=4

" " when indenting with '>', use 4 spaces width
set shiftwidth=4

" " On pressing tab, insert 4 spaces
set expandtab

" " Show line number 
set number

" " highlight search matches
set hlsearch

" use indentation of previous line
set autoindent

" use intelligent indentation for C
set smartindent

" " support 256 colors
set t_Co=256

" " Solarized Colorscheme
syntax enable
let g:solarized_termcolors=256
set background=dark

" " Gruvbox specific vars
let g:gruvbox_italic=1 " italics for the gruvbox scheme
let g:gruvbox_contrast_dark = "soft"

" " Colorscheme settings
" solarized, angr, alduin, happy_hacking, deus, afterglow are also good ones
colorscheme gruvbox

" *** Plugins config
" ** Airline **
let g:airline_theme = 'solarized'
let g:airline_powerline_fonts = 1

" Always show bar, see https://github.com/vim-airline/vim-airline/issues/20 for details
set laststatus=2

" ** vim-gitgutter
let g:gitgutter_map_keys = 0 "Remove all mappings, not used

" highlight python syntax features
let python_highlight_all=1

" highlight matching braces
set showmatch

" highlight python syntax features
let python_highlight_all=1

" ** autocompletion
filetype on
syntax on
