" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

Plug 'vim-airline/vim-airline'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" First one tracks the engine, second one tracks the snippets
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" NERD-Tree Plugin
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Colour schemes
Plug 'rafi/awesome-vim-colorschemes'


Plug 'ycm-core/YouCompleteMe'

Plug 'ervandew/supertab'

" Initialize plugin system
call plug#end()

set tabstop=8
set expandtab
set softtabstop=3
set shiftwidth=3
set number
set autoindent
syntax on
filetype indent on
filetype plugin on

set t_Co=256
" set termguicolors

let g:airline_powerline_fonts=1

colorscheme onedark

inoremap jk <ESC>
inoremap @@ <cr>Alex Bogdan<cr><cr>stefanalexb@gmail.com<cr>

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
