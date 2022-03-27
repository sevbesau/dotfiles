"
" Plugins -> using vim-plug plugin manager
" To install/update the plugins use :PlugInstall
"

" get plug when not installed
if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source ~/.config/nvim/init.vim 
endif

call plug#begin('~/.config/nvim/plugged')
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }		" really nice syntax highlighter
Plug 'nvim-treesitter/playground'
Plug 'scrooloose/nerdtree'																			" File browser in sidebar
Plug 'jistr/vim-nerdtree-tabs'																	" Only one nerdtree panel -> :NERDTreeTabsToggle
Plug 'tpope/vim-fugitive'																				" git plugin for vim :G for git commands
Plug 'alvan/vim-closetag'																				" close html tags using >
Plug 'tpope/vim-surround'																				" vim binds for surounding text
Plug 'neovim/nvim-lspconfig'																		" language server support
Plug 'nvim-lua/lsp-status.nvim'																	" language server status line support 
Plug 'hrsh7th/cmp-nvim-lsp', { 'branch': 'main' }								" completion 
Plug 'hrsh7th/cmp-buffer', { 'branch': 'main' }									" completion 
Plug 'hrsh7th/cmp-path', { 'branch': 'main' }	      						" completion 
Plug 'hrsh7th/cmp-cmdline', { 'branch': 'main' }	   						" completion 
Plug 'hrsh7th/nvim-cmp', { 'branch': 'main' }										" completion 
Plug 'hrsh7th/cmp-vsnip', { 'branch': 'main' }	     						" completion 
Plug 'hrsh7th/vim-vsnip'     																		" completion 
Plug 'nvim-lua/plenary.nvim'        														" for telescope
Plug 'natecraddock/telescope-zf-native.nvim'										" better search alg for telescope
Plug 'nvim-lua/popup.nvim'																			" popup implementation (telescope)
Plug 'nvim-telescope/telescope.nvim'														" telescope fuzzy finder
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npm i' } " markdown preview
Plug 'jonsmithers/vim-html-template-literals'										" html support in template literals
Plug 'ap/vim-css-color'																					" preview colors in source code
Plug 'sbdchd/neoformat' 																				" code formatter 
Plug 'NTBBloodbath/rest.nvim'																		" vim http client
Plug 'tpope/vim-commentary'																			" comment out lines with gc
Plug 'vwxyutarooo/nerdtree-devicons-syntax'											" colors for the devicons
Plug 'ryanoasis/vim-devicons'																		" (! load as the last one!) fancy icons for nerdtree
call plug#end()

