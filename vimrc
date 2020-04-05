set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugin fugitive - for git capabilities in vim
Plugin 'tpope/vim-fugitive'
" Plugin for js
Plugin 'pangloss/vim-javascript'
" Plugin for color-scheme solarize
Plugin 'altercation/vim-colors-solarized'
" Syntax checking in vim
Plugin 'scrooloose/syntastic'
"Vim plugin for solidity
Plugin 'tomlion/vim-solidity'
" Vim plugin for ruby
Plugin 'vim-ruby/vim-ruby'
"Plugin for Node.js
Plugin 'moll/vim-node'
" Nerd Tree
Plugin 'scrooloose/nerdtree'
" NERD Tree git plugin
Plugin 'Xuyuanp/nerdtree-git-plugin'
" nerdtree syntax highlighting
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
" Autocomplete for node js
Plugin 'myhere/vim-nodejs-complete'
" Vim proc execution library to execute commands in vim
Plugin 'Shougo/vimproc.vim'
" High speed vim navigation
Plugin 'easymotion/vim-easymotion'
" Parenthisising
Plugin 'tpope/vim-surround'
" Git gutter
Plugin 'airblade/vim-gitgutter'
" Theme for vim
Plugin 'vim-airline/vim-airline'
" themes for vim airline
Plugin 'vim-airline/vim-airline-themes'
" Code commenter
Plugin 'scrooloose/nerdcommenter'
" Themes
Plugin 'flazz/vim-colorschemes'
" Code indentation
Plugin 'nathanaelkane/vim-indent-guides'
" Code completion
Plugin 'Valloric/YouCompleteMe'
" Code Snippets
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"options for solarized color theme
syntax enable
set background=dark
let g:solarized_termcolors=256

"Commands for syntastic syntax check
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_mode_map = { 'mode': 'active' }
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_standard_generic = 1

"Options for scrooloose/nerdtree
"let g:NERDTreeNodeDelimiter = "\u00a0"
let mapleader = ","
nmap <leader>m :NERDTree<cr>
let NERDTreeShowHidden=1

" Options for vim-airline
let g:airline_powerline_fonts = 1
let g:airline_skip_empty_sections = 1
set fillchars+=stl:\ ,stlnc:\

" Optionst for vim-airline-themes
let g:airline_theme='bubblegum'

" Options for SnipMate
imap <C-J> <esc>a<Plug>snipMateNextOrTrigger
smap <C-J> <Plug>snipMateNextOrTrigger

"User options
" Enable line number
set number
" Auto indent the code
set autoindent
" Smart indent the code
set smartindent
" Highligh the search item
set hlsearch
" Track the search
set incsearch
" Will show matching opening or closing brackets
set showmatch
" Fix the backspace no working sometimes in insert mode
set backspace=indent,eol,start
" Set tab to 4 space wide
filetype plugin indent on
set tabstop=4
set shiftwidth=4
