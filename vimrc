" vimrc

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Bundles
Bundle 'jelera/vim-javascript-syntax'
Bundle 'walm/jshint.vim'
Bundle 'flazz/vim-colorschemes'
Bundle 'myusuf3/numbers.vim'

Bundle 'bling/vim-airline'
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts=1
let g:airline_enable_branch=1
let g:airline_enable_syntastic=1
let g:airline_detect_paste=1

Bundle 'scrooloose/nerdtree'
map ,t <ESC>:NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1       " Destaca a linha atual
let NERDTreeShowHidden=1                " Lista arquivos ocultos
let NERDTreeShowLineNumbers=0
let NERDTreeQuitOnOpen=1
let NERDTreeIgnore=['\.*swp$', '^\.git$']          " Arquivos que não serão exibidos.

Bundle 'kien/ctrlp.vim'
nnoremap ,f :CtrlP<CR>
let g:ctrlp_working_path_mode='' "Pesquisa a partir do diretório atual no Vim.

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

colorscheme Tomorrow-Night

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd        " Show (partial) command in status line.
"set showmatch      " Show matching brackets.
"set ignorecase     " Do case insensitive matching
"set smartcase      " Do smart case matching
"set incsearch      " Incremental search
"set autowrite      " Automatically save before commands like :next and :make
"set hidden     " Hide buffers when they are abandoned
"set mouse=a        " Enable mouse usage (all modes)


set laststatus=2    " Sempre exibe a barra de status
set number          " Exibe o número das linhas na lateral
set ai              " Faz o auto tab/auto indent
set ts=4            " tab vale 4 espaços
set sw=4            " tab com 4 espaços
set softtabstop=4   " Operações como o backspace também com 4 espaços
set et              " Troca tabs por espaços
set autoread        " Recarrega arquivos alterados em disco automaticamente
syntax enable       " Habilita a marcação de sintaxe
set encoding=utf-8

" Persistent undo
if has('persistent_undo')
    set undodir=~/.vimundo      " Diretório de gravação do undo
    set undofile                " desfazer persistente
    set undolevels=1000         " número de alterações para desfazer
    set undoreload=10000        " número de linhas do undo no reload de um buffer
endif
