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
highlight Normal guibg=#24242E

" Highlight current line
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END
highlight CursorLine cterm=NONE ctermbg=black guibg=#373746

" Show column on 81st character
" set cc=81
highlight ColorColumn ctermbg=8 guibg=#393947

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
  call plug#end()

  " Reload .vimrc and :PlugInstall to install plugins.
else
  " Display formatted status line in vim
  set laststatus=2
  set statusline=%F%m%r%h%w\%=[L:\%l/%L\ C:\%c\ P:\%p%%]
  highlight StatusLine ctermfg=2
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
" Map j + k to Esc
inoremap jk <Esc>

" Retain cursor position after yanking
vmap y ygv<Esc>

" Delete without yanking it (normal mode)
nnoremap d "_d

" Delete without yanking it (visual and select mode)
" If you want to cut, use 'x' instead of 'd' after selecting lines
vnoremap d "_d

" Paste without yanking it (visual mode)
xnoremap p "_dP

" CTRL + HJKL to move between splits
nmap <silent> <C-K> :wincmd k<CR>
nmap <silent> <C-J> :wincmd j<CR>
nmap <silent> <C-H> :wincmd h<CR>
nmap <silent> <C-L> :wincmd l<CR>
