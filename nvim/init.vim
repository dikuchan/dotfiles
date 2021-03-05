set relativenumber 
set numberwidth=3
set tabstop=4 
set shiftwidth=4 
set expandtab
set splitbelow splitright
set hidden
set foldmethod=syntax
set foldnestmax=6
set nofoldenable
set foldlevel=2
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

" Back to normal mode
tnoremap <Esc> <C-\><C-n>
tnoremap <M-[> <Esc>
tnoremap <C-v><Esc> <Esc>

" Easier move in normal mode
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

" Open terminal buffer
command! -nargs=1 T split | resize <args> | terminal
command! -nargs=1 TV split | resize <args> | terminal

" Hide search highlight
nnoremap <CR> :noh<CR><CR>

" Plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'arcticicestudio/nord-vim'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Shougo/deoplete.nvim'
Plug 'preservim/tagbar'
Plug 'vpunch/vim-lama-syntax', { 'branch': 'main' }
Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }
Plug 'rust-lang/rust.vim'
Plug 'lervag/vimtex'
Plug 'puremourning/vimspector'
Plug 'lyokha/vim-xkbswitch'

call plug#end()

colorscheme nord

syntax enable
filetype plugin indent on

" Save space for LSP info
set signcolumn=yes
set completeopt-=preview

let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'python': ['~/.local/bin/pyls'],
    \ 'cpp': ['clangd'],
    \ 'tex': ['texlab'],
    \ }

nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

" File explorer
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTree<CR>
nnoremap <C-t><C-r> :NERDTreeToggle<CR>
nnoremap <C-t><C-f> :NERDTreeFind<CR>

" Tag viewer
nnoremap <C-i> :TagbarOpen j<CR>
nnoremap <C-i><C-r> :TagbarToggle<CR>
nnoremap <C-i><C-q> :TagbarClose<CR>

" Code completion
let g:deoplete#enable_at_startup = 1

let g:vimspector_enable_mappings = 'HUMAN'

let g:airline_powerline_fonts = 1

let g:rustfmt_autosave = 0

let g:XkbSwitchEnabled = 1
let g:XkbSwitchLib = '/usr/local/lib/libxkbswitch.so'
let g:XkbSwitchIMappings = ['ru', 'us']

" Completion on tab
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

nnoremap <C-d><C-b> :call vimspector#Launch()<CR>

" Human mapping
" <F5>          vimspector#Continue()
" <F3>          vimspector#Stop()
" <F4>          vimspector#Restart()
" <F6>          vimspector#Pause()
" <F9>          vimspector#ToggleBreakpoint()
" <leader><F9>  vimspector#ToggleBreakpoint({ trigger expr, hit count expr })
" <F8>          vimspector#AddFunctionBrakpoint('<cexpr>')
" <leader><F8>  vimspector#RunToCursor()
" <F10>         vimspector#StepOver()
" <F11>         vimspector#StepInto()
" <F12>         vimspector#StepOut()
