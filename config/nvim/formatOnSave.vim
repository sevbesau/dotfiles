"
" format on save
"

" formatting setting
let useformatting=1
" formatting function 
function DoFormat()
	if has("nvim") && g:useformatting
		lua vim.lsp.buf.formatting_sync(nil, 1000)
	endif
endfunction
" format these filetypes
if useformatting 
	autocmd BufWritePre *.md call DoFormat()
	autocmd BufWritePre *.js Neoformat prettier
	autocmd BufWritePre *.ts Neoformat prettier
	autocmd BufWritePre *.html Neoformat
	autocmd BufWritePre *.json Neoformat
endif
" command for easy toggling
command! ToggleFormatting let useformatting = (useformatting == 0 ? 1 : 0) 

