""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LOOKS & THEME
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let &t_Co=256           " Turn on 256 colors
colorscheme solarized   " Enable Solarized theme
syntax on               " Enable syntax highlighting
set number              " Display line numbers

" Display encoding correctly
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=utf-8
setglobal fileencoding=utf-8

" Display status line always
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2
set statusline=%F%m%r%h%w\%=[L:\%l\ C:\%c\ A:\%b\ H:\x%B\ P:\%p%%]

" Show column on 81st character
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set cc=81

" Highlight current line
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TABS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set smartindent         " Indent correctly
set expandtab           " Use spaces
set tabstop=4           " Number of spaces per tab
set shiftwidth=4        " Number of spaces per tab

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" OVERIDDING DEFAULT COMMANDS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set splitright          " Default split is to the right
inoremap jk <esc>       " Map j + k to Esc
let mapleader=","       " Set mapleader

" Mappings for moving between splits
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <silent> <C-K> :wincmd k<CR>
nmap <silent> <C-J> :wincmd j<CR>
nmap <silent> <C-H> :wincmd h<CR>
nmap <silent> <C-L> :wincmd l<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VUNDLE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle "pangloss/vim-javascript"
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'Syntastic'
Bundle 'airblade/vim-gitgutter'
Bundle 'vim-scripts/closetag.vim'
Bundle 'lunaru/vim-less'
Bundle 'ntpeters/vim-better-whitespace'

filetype plugin indent on

" Syntastic
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_php_checkers = ['php', 'phpmd']
let g:syntastic_quiet_messages = { "type": "style" }
