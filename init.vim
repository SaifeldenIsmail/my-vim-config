set number
call plug#begin('~/.vim/plugged')
Plug 'stevearc/vim-arduino'
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch':'release'}

Plug 'metakirby5/codi.vim'
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline-themes'
Plug 'xuhdev/vim-latex-live-preview'
Plug 'sickill/vim-monokai'
Plug 'sainnhe/gruvbox-material'
Plug 'arcticicestudio/nord-vim'
call plug#end()

 
colorscheme nord
set cursorline
hi CursorLine 
nmap <space>e :CocCommand explorer<CR>
map <Tab> :NERDTreeToggle<CR>
map <S-y> :tabnew<CR>
map <S-n> :tabn<CR>
let g:airline_theme='nord'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
inoremap " ""<left> 
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>



