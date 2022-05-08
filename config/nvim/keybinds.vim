"
" Keybindings
"

""" telescope
" grep search
nnoremap <C-F> <cmd>Telescope live_grep<CR>
" switch buffer
nnoremap <C-B> <cmd>Telescope buffers<CR>
" open file
nnoremap <C-O> <cmd>Telescope find_files find_command=rg,--ignore,--hidden,--files<CR>
" ??? 
nnoremap <C-H> <cmd>Telescope oldfiles<CR>
" code actions
nnoremap <Leader><CR> <cmd>Telescope lsp_code_actions<CR>
" get refrences
nnoremap <silent>gr    <cmd>Telescope lsp_references<CR>
" git status
nnoremap <Leader>gs    <cmd>Telescope git_status<CR>
" Show diagnostics
nnoremap <Leader>sd <cmd>Telescope diagnostics<CR>

""" nerdtree
" open and close NERDTree
map <C-n> :NERDTreeToggle<CR>

""" NeoFormat
" format and save
nnoremap <silent>ff			<cmd>Neoformat<CR><Esc>:w<CR>

""" language server
" go to defenition
nnoremap <silent>gd			<cmd>lua vim.lsp.buf.definition()<CR>
" show docs
nnoremap <silent>K			<cmd>lua vim.lsp.buf.hover()<CR>
" show params
inoremap <silent><C-k>	<cmd>lua vim.lsp.buf.signature_help()<CR>
" rename
inoremap <Leader>mv			<cmd>lua vim.lsp.buf.rename()<CR>
" explain error
inoremap <Leader>ge			<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
" show error (next error)
inoremap <Leader>se			<cmd>lua vim.lsp.diagnostic.goto_next { wrap = true }<CR>

""" commentary
" ctrl / for commenting
nnoremap <C-_> :Commentary<CR>
vnoremap <C-_> :Commentary<CR>

""" native
" get rid of highlighting until next search
map <leader>h :noh<CR>
" Previous file
nnoremap <Leader>pf <C-^>
" vertical resize
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
" ctrl copy, pase, cut
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa
" ctrl s save
map <C-s> :w<CR>

