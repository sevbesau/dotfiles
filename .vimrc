" 
" __   _(_)_ __ ___  _ __ ___ 
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__ 
"   \_/ |_|_| |_| |_|_|  \___|
"                             



" pathogen (vim plugin manager)
execute pathogen#infect()

" no swap files
set noswapfile

" relative numberlines
set number relativenumber

" show autocomplete menus
set wildmenu

" make wildmenu behave like bash completion
set wildmode=list:longest

" tabsettings
set tabstop=2
set autoindent

" turn off the terminal bell
set visualbell

" use system clipboard
set clipboard+=unnamed

" close vim when only a nertree tab remains
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" settings for colorscheme (onedark)
syntax on
"colorscheme onedark
set laststatus=2
let g:lightline = {
    \ 'colorscheme': 'onedark',
    \ }


"
" Keybindings
"

" disable arrowkeys (for habit breaking)
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>


" make copying easyer
nnoremap <C-c> "+y

" use the command editor
nnoremap : q:i
nnoremap / q/i
nnoremap ? q?i

" nerdtree
map <C-n> :NERDTreeToggle<CR>

" tab navigation
map <C-l> :tabn<CR>
map <C-h> :tabp<CR>

" window bindings
map <A-l> 5l<CR>


