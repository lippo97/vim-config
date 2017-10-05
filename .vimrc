""Vundle setup
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'godlygeek/tabular'
Plugin 'ervandew/supertab'
Plugin 'bling/vim-airline'
Plugin 'jeetsukumaran/vim-buffergator'
"Necessario per snipmate
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate" 
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-rails'
Plugin 'L9'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()
filetype plugin indent on
""End of Vundle

"Basic behavior
set smartcase
set hlsearch
set incsearch
syntax enable 

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set ai
set si
set wrap
set number

"Basic keybindings
"noremap <SPACE> <Nop>
"vnoremap <SPACE> <Nop>
let mapleader=","
imap jk <Esc>
nnoremap <UP> :<UP>
nnoremap . :
nnoremap : .
vnoremap . :
vnoremap : .
noremap <C-n> :NERDTreeToggle<CR>x  

"Split window keybindings
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map - <C-W>-
map + <C-W>+
set winminheight=0
set winminwidth=10

"Tabular.vim keybindings
nnoremap <Leader>t= :Tabularize /=<CR>
vnoremap <Leader>t= :Tabularize /=<CR>
nnoremap <Leader>t: :Tabularize /:\zs<CR>
vnoremap <Leader>t: :Tabularize /:\zs<CR>

"Ctrlp basic settings
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
  \}
noremap <C-b> :CtrlPBuffer<cr>

"Buffergator settings 
let g:buffergator_viewport_split_policy = 'L'
"Suppress default keybindings
let g:buffergator_suppress_keymaps = 1
nnoremap <leader>jj :BuffergatorMruCycleNext<cr>
nnoremap <leader>kk :BuffergatorMruCyclePrev<cr>
nnoremap <leader>bl :BuffergatorOpen<cr>

nnoremap <leader>T :enew<cr>
nnoremap <leader>bq :bp <BAR> bd #<cr>

"Vim-airline settings
let g:airline#extensions#tabline#enabled = 1
