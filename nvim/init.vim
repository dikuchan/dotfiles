set relativenumber numberwidth=3
set tabstop=4 shiftwidth=4 expandtab
set splitbelow splitright

" Back to normal mode
tnoremap <Esc> <C-\><C-n>
tnoremap <M-[> <Esc>
tnoremap <C-v><Esc> <Esc>
" Easier move in normal mode
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

command! -nargs=1 T split | resize <args> | terminal
command! -nargs=1 TV split | resize <args> | terminal

call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'arcticicestudio/nord-vim'

call plug#end()

colorscheme nord

let g:airline_powerline_fonts = 1

