" user nerdtree find to search 
" nnoremap <silent> <Leader>f :NERDTreeFind<CR> 

" this is the key to jump to the nerdtree window from any other window
map <C-n> :NERDTreeFind<cr>
" pressing this inside any open file in vim will jump to the nerdtree and highlight where that file is -> very useful when you have multiple files open at 
map ] :NERDTreeFind<CR>

" bulk commenting
vnoremap <C-\> :Commentary<CR>
autocmd FileType ruby setlocal commentstring=#\ %s

" search config
" remap envoke key
" file search using fuzzy file search
nnoremap <silent> <C-f> :FZF<CR>
" keyword search using ripgrep and fzf
nnoremap <silent> <C-g> :RG<CR><CR>

" nerdtree toggle
map <C-q> :NERDTreeToggle<CR>

" Maps <leader>/ so we're ready to type the search keyword
" nnoremap <C-space> :Ack!<Space>
" }}}

" Navigate quickfix list with ease
nnoremap <silent> [q :cprevious<CR>
nnoremap <silent> ]q :cnext<CR>

" towards left and right tab
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>

" file path
:nmap <C-S-c> :let @+ = expand("%")<cr>
" full path
:nmap <C-S-p> :let @+ = expand("%:p")<cr>
" file name
:nmap <C-S-n> :let @+ = expand("%:t")<cr>

" toggle keyword search highlight
nnoremap <F3> :set hlsearch!<CR>
