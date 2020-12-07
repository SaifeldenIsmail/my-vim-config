set number relativenumber
set noswapfile
set nocompatible              " required
filetype off                  " required
set showtabline=0
set hidden
set autoindent
set syntax
set scrollback=7
set expandtab
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch':'release'}
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'yuttie/comfortable-motion.vim'      " Smooth scrolling
Plug 'thaerkh/vim-indentguides'           " Visual representation of indents
Plug 'jmcantrell/vim-virtualenv'
Plug 'itchyny/lightline.vim'
Plug 'metakirby5/codi.vim'
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'xuhdev/vim-latex-live-preview'
Plug 'sickill/vim-monokai'
Plug 'sainnhe/gruvbox-material'
Plug 'arcticicestudio/nord-vim'
Plug 'mhinz/vim-startify'

Plug 'jiangmiao/auto-pairs'
Plug 'dracula/vim'
call plug#end()
set mouse=a
au BufReadPost,BufNewFile *.js,*.ts,*.css Codi 
colorscheme nord 
set cursorline
map <Tab> :NERDTreeToggle<CR>
map <S-y> :tabnew<CR>
map <S-n> :tabn<CR>


set encoding=utf-8
scriptencoding utf-8

let g:lightline = {
   \ 'colorscheme': 'nord',
   \ }

