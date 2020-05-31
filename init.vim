set number
call plug#begin('~/.vim/plugged')
Plug 'stevearc/vim-arduino'
Plug 'vim-airline/vim-airline'
Plug 'xuhdev/vim-latex-live-preview'
Plug 'metakirby5/codi.vim'
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline-themes'
Plug 'davidhalter/jedi-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sickill/vim-monokai'
call plug#end()

colorscheme gruvbox 
map <Tab> :NERDTreeToggle<CR>
let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
inoremap " ""<left> 
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>



