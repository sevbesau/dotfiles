"
" vimrc by seppe van besauw
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
set tabstop=4
set autoindent

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
" automaticly close parens
"

inoremap (		()<Left>
inoremap {		{}<Left>
inoremap [		[]<Left>
inoremap '		''<Left>
inoremap "		""<Left>



"
" Keybindings
"

" disable arrowkeys (for habit breaking)
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" nerdtree
map <C-n> :NERDTreeToggle<CR>

" tab navigation
map <C-l> :tabn<CR>
map <C-h> :tabp<CR>

" window bindings
map <A-l> 5l<CR>


