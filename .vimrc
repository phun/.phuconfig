""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LOOKS & THEME
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn on 256 colors
let &t_Co=256

" Enable syntax highlighting
syntax on

" Display line numbers
set number

" Display encoding correctly
set encoding=utf-8
setglobal fileencoding=utf-8

" Background color
if !exists('g:vscode')
  highlight Normal guibg=#24242E
endif

" Highlight current line
if !exists('g:vscode')
  augroup CursorLine
    au!
    au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    au WinLeave * setlocal nocursorline
  augroup END
  highlight CursorLine cterm=NONE ctermbg=black guibg=#373746
endif

" Show column on 81st character
" set cc=81
if !exists('g:vscode')
  highlight ColorColumn ctermbg=8 guibg=#393947
endif

if !exists('g:vscode')
  if has('nvim')
    " Plugins only for neovim to keep vim lightweight
    let data_dir = '~/.vim'
    if empty(glob(data_dir . '/autoload/plug.vim'))
      silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
      autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif

    call plug#begin()
    " Explorer
    Plug 'nvim-tree/nvim-web-devicons' " optional
    Plug 'nvim-tree/nvim-tree.lua'
    " Search for file
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.2' }
    call plug#end()

    " Reload .vimrc and :PlugInstall to install plugins.
  else
    " Display formatted status line in vim
    set laststatus=2
    set statusline=%F%m%r%h%w\%=[L:\%l/%L\ C:\%c\ P:\%p%%]
    highlight StatusLine ctermfg=2
  endif
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FORMATTING
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indent correctly
set smartindent

" Use spaces
set expandtab

" Number of spaces per tab
set tabstop=4
set shiftwidth=4

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" KEYBINDINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = " "

" Map j + k to Esc
inoremap jk <Esc>

" Retain cursor position after yanking
vmap y ygv<Esc>

" Delete without yanking it (normal/visual mode)
" If you want to cut, use 'x' instead of 'd' after selecting lines
vnoremap d "_d
nnoremap d "_d

" CTRL+'x' to cut (delete and yank) b/c i use 'd' to delete chars
nnoremap <C-X> dd

" Paste without yanking it (visual mode)
xnoremap p "_dP

" CTRL + HJKL to move between splits
nmap <silent> <C-K> :wincmd k<CR>
nmap <silent> <C-J> :wincmd j<CR>
nmap <silent> <C-H> :wincmd h<CR>
nmap <silent> <C-L> :wincmd l<CR>

" When you have lines selected, use CTRL + JK to move them up and down
vnoremap <C-J> :m '>+1<CR>gv=gv
vnoremap <C-K> :m '<-2<CR>gv=gv

" <leader>Y to yank to system clipboard
vmap <leader>y "+y

" <leader>P to paste from system clipboard
nnoremap <leader>p "+p

" CTRL+A to select all (normal mode)
nmap <C-A> ggVG<CR>

if exists('g:vscode')
    " Enable commenting out lines in VS Code and retains cursor position
    xmap <C-/> <Plug>VSCodeCommentarygv<Esc>
    nmap <C-/> <Plug>VSCodeCommentaryLinegv<Esc>
endif
