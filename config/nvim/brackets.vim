"
" auto close brackets
"

" if index(['js', 'ts', 'json'], &filetype) != -1

	let closeBrackets=1
	
	if closeBrackets
		inoremap " ""<left>
		inoremap ' ''<left>
		inoremap ( ()<left>
		inoremap [ []<left>
		inoremap { {}<left>
		inoremap {<CR> {<CR>}<ESC>O
	endif
	
	command! ToggleCloseBrackets let closeBrackets = (closeBrackets == 0 ? 1 : 0)

" endif
