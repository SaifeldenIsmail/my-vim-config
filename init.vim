set number
call plug#begin('~/.vim/plugged')
Plug 'stevearc/vim-arduino'
Plug 'neoclide/coc.nvim', {'branch':'release'}
Plug 'itchyny/lightline.vim'
Plug 'metakirby5/codi.vim'
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline-themes'
Plug 'xuhdev/vim-latex-live-preview'
Plug 'sickill/vim-monokai'
Plug 'sainnhe/gruvbox-material'
Plug 'arcticicestudio/nord-vim'
Plug 'jiangmiao/auto-pairs'

call plug#end()

 
colorscheme nord
set cursorline
hi CursorLine 
nmap <space>e :CocCommand explorer<CR>
map <Tab> :NERDTreeToggle<CR>
map <S-y> :tabnew<CR>
map <S-n> :tabn<CR>
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }

