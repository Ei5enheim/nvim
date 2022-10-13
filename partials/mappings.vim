" user nerdtree find to search 
" nnoremap <silent> <Leader>f :NERDTreeFind<CR> 

" Ctrl control key mappings
" dd line in insert mode:imap <c-
inoremap <C-d> <esc>ddi
" UPPERCASE CURRENT word
inoremap <C-u> <esc>viwU<esc> 
" noremap <C-N> :NERDTreeFind<cr>

let mapleader = "-"
" source vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>
" edit my vimrc file
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" relative file path
nnoremap <leader>rp :let @+ = expand("%")<cr>
" full path
nnoremap <leader>fp :let @+ = expand("%:p")<cr>
" file name
nnoremap <leader>fn :let @+ = expand("%:t")<cr>

" this is the key to jump to the nerdtree window from any other window
" pressing this inside any open file in vim will jump to the nerdtree
" and highlight where that file is -> very useful when you have multiple files open at 
noremap <C-]> :NERDTreeFind<CR>
" bulk commenting
noremap <C-\> <Plug>Commentary<CR>
" nerdtree toggle
noremap <C-q> :NERDTreeToggle<CR>
" file search using fuzzy file search
nnoremap <silent> <C-f> :FZF<CR>
" keyword search using ripgrep and fzf
nnoremap <silent> <C-g> :RG<CR><CR>
" towards left and right tab
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
" Coc floating window cursor movers
nnoremap <nowait><expr> <C-j> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-j>"
nnoremap <nowait><expr> <C-k> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-k>"
inoremap <nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"

" set ruby comment character
autocmd FileType ruby setlocal commentstring=#\ %s

" Maps <leader>/ so we're ready to type the search keyword
" nnoremap <C-space> :Ack!<Space>
" }}}

" Navigate quickfix list with ease
" nnoremap <silent> [q :cprevious<CR>
" nnoremap <silent> ]q :cnext<CR>

" toggle keyword search highlight
nnoremap <F3> :set hlsearch!<CR>

" reload buffers
nnoremap <silent> <C-S-r> :bufdo :e!<cr>

" find and replace
" nnoremap <C-R>
"   \ :let @s='\<'.expand('<cword>').'\>'<CR>
"   \ :Grepper -cword -noprompt<CR>
"   \ :cfdo %s/<C-r>s//g \| update
"   \<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>
