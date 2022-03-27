" 
" NERDTree settings
"

set encoding=UTF-8
" automatically open nerdtree if we open a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | exec 'NERDTreeFocus' | endif
" Close nvim when only NERDTree remains
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" show hidden files
"let NERDTreeShowHidden=1
" enable icons
let g:webdevicons_enable_nerdtree = 1

