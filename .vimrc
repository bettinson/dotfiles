set nocompatible " use more than vi
set shell=/bin/bash
" start Vundle setup
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

Plugin 'drmingdrmer/xptemplate'

" bottom bar customizing
Plugin 'bling/vim-airline'

" Distraction free-mode
Plugin 'junegunn/goyo.vim'

" molokai theme
Plugin 'tomasr/molokai'

Plugin 'scrooloose/syntastic' 

" syntax checking

" go stuff
Plugin 'fatih/vim-go'

" end Vundle setup
call vundle#end()
filetype plugin indent on

"XPTemplate
let g:xptemplate_brace_complete = '([{'


" general configuration
set number
syntax on
set hlsearch

" ctr-l will turn off highlighting
nnoremap <C-L> :nohl<CR><C-L>
map <F8> : !gcc % && ./a.out <CR>


" insensitive search
set ignorecase
set smartcase

" clearer cursor
:set cursorline

" some of this taken from sferik/dotfiles

" let backspace work on other than just inserted text
set backspace=indent,eol,start

" Set default encoding to UTF-8.
set encoding=utf-8 fileencodings=

" cursor flip to matching parens and such
set showmatch

" Keep 5 lines of context when scrolling
set scrolloff=5

" Keep 5 lines of context when scrolling
set scrolloff=5

" Backspace and cursor keys wrap
set whichwrap+=<,>,h,l

" Turn on wild menu
set wildmenu

" Path/file expansion in colon-mode.
set wildmode=longest:full,list:full,list:longest
set wildchar=<TAB>

" Yes, we have a fast terminal
set synmaxcol=300
set ttyfast
set ttyscroll=3
set lazyredraw

" tab configuration should be language specific
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

" language specific tabs
autocmd FileType html       setl sw=2 sts=2 et
autocmd FileType eruby       setl sw=2 sts=2 et
autocmd FileType ruby       setl sw=2 sts=2 et
autocmd FileType ocaml       setl sw=2 sts=2 et
autocmd FileType sh       setl sw=2 sts=2 et

" monokai
let g:rehash256 = 1
colorscheme molokai

" default syntax checking
let g:syntastic_python_python_exec = '/Library/Frameworks/Python.framework/Versions/3.5/bin/python3' " use python 3

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" airline
set laststatus=2

" Go stuff
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
