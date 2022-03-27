"
" General Settings
"

" Space is leader
" let mapleader = " "
" let maplocalleader = " "

syntax on 					" enable built in syntax hightlight
set mouse=a					" enable mouse support
set noswapfile 			" disable swapfiles
set nobackup	 			" disable backup files
set nowritebackup		" disable backup files
set number     			" show line numbers
set tabstop=2  			" render a tab as 2 spaces
set softtabstop=2	  " width of space tab mixes
set shiftwidth=2		" 2 space tabs
set autoindent 			" automatically follow indentation
set visualbell 			" dont startle me with this shit...
set nowrap		 			" dont wrap lines
set fixendofline		" add newlines at the end of files
"set nohlsearch 			" dont hightlight searches
set termguicolors   " enable 24bit color mode in the tui
set ruler 					" show the line and col
set number rnu 			" set hybrid line numbers
set showcmd 				" show the last used command
set incsearch 			" while searching, jump to the first match
set autoread 				" re-read file when it has been changed outside vim
set smartcase 			" search is only case sensitive when uppercase and lowercase are mixed
set noerrorbells 	 	" duck this
set signcolumn=yes 	" always show this
"set cursorline 			" hightlight the line of the cursor

"
" Settings when not in vscode
"

if !exists('g:vscode') 

colorscheme monokai

" load plugins
source ~/.config/nvim/plugins.vim
" load lsp settings
source ~/.config/nvim/lspconfig.vim
" load keybinds
source ~/.config/nvim/keybinds.vim
" NERDTree settings
source ~/.config/nvim/nerdtree.vim
" Format on save
source ~/.config/nvim/formatOnSave.vim
" statusline
source ~/.config/nvim/statusline.vim
" treesitter
source ~/.config/nvim/treesitter.vim
" telescope
source ~/.config/nvim/telescope.vim
" completion menu
source ~/.config/nvim/compe.vim
" rest calls
source ~/.config/nvim/rest.vim

" tabline
source ~/.config/nvim/tabline.vim

endif " g:vscode
