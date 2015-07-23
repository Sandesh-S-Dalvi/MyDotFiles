set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/vim-monokai

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'

" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Plugin for Django
Plugin 'django.vim'

" Syntax plugin
Plugin 'scrooloose/syntastic'

" This plugin Autocloses tags
Plugin 'AutoClose'

" YouCompleteMe
" Plugin 'Valloric/YouCompleteMe'

" Monokai colorscheme
Plugin 'crusoexia/vim-monokai'

" Vim airline adds something to status bar
Plugin 'bling/vim-airline'

" Finds whitespace and highlights
Plugin 'ntpeters/vim-better-whitespace'

" Find instead of grep
Plugin 'mileszs/ack.vim'

" Shows Tag bar
Plugin 'tagbar'

" Tree bar plugin to browse files in sidebar
Plugin 'scrooloose/nerdtree'

" Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
Plugin 'kien/ctrlp.vim'

" Surround.vim is all about surroundings: parentheses, brackets, quotes, XML tags, and more.
Plugin 'tpope/vim-surround'

" Vim plugin for intensely orgasmic commenting
Plugin 'scrooloose/nerdcommenter'

" aligning test
Plugin 'godlygeek/tabular'

" Supertab is a vim plugin which allows you to use <Tab> for all your insert completion needs
Plugin 'ervandew/supertab'

" vim plug-in which provides support for expanding abbreviations similar to emmet.
Plugin 'mattn/emmet-vim'

" used for displaying thin vertical lines at each indentation level for code indented
Plugin 'Yggdroot/indentLine'

" Jedi-Vim for python auto completion
Plugin 'davidhalter/jedi-vim'

" snippets ultisnips
"Plugin 'SirVer/ultisnips'

" Django pony plugin
Plugin 'jmcomets/vim-pony'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set foldmethod=indent
set foldlevel=99
let mapleader=","

" Key maps
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
" Two semicolons are easy to type.
inoremap ;; <ESC>

syntax on "syntax
filetype on "filetype detection
filetype plugin indent on "filetype-based indentation
set tabstop=4 expandtab shiftwidth=4 softtabstop=4 "python-compatible tab setup
set foldmethod=indent foldlevel=99 "python-compatible folding
set number "line numbers

" Colorsheme
syntax enable
set background=dark
set term=screen-256color
colorscheme monokai

" vim airline Config
set laststatus=2 " Always show bar
let g:airline_theme='powerlineish'
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_section_z=''

" Tagbar
nmap <F8> :TagbarToggle<CR>

" NERDTree
map <C-n> :NERDTreeToggle<CR> " Opens NerdTree on Crtl+n

" CtrlP
let g:ctrlp_map = '<c-p>' "Opens CtrlP on Ctrl+p
let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_working_path_mode = 'ra' "Opens in working dir

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux ignores files
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
"let g:ctrlp_custom_ignore = {
            "\ 'dir':  '\v[\/]\.(git|hg|svn)$',
            "\ 'file': '\v\.(exe|so|dll)$',
            "\ 'link': 'some_bad_symbolic_links',
            "\ }

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_python_exec = '/usr/bin/python3'

" Jedi-Vim
" "let g:jedi#completions_enabled = 0
let g:jedi#force_py_version = 3
