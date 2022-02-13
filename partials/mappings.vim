" user nerdtree find to search 
" nnoremap <silent> <Leader>f :NERDTreeFind<CR> 
"
" dd line in insert mode:imap <c-
inoremap <C-d> <esc>ddi

let mapleader = ","

" source vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

" open vimrc
nnoremap <leader>ev :split $MYVIMRC<cr>

" UPPERCASE CURRENT word
inoremap <C-u> <esc>viwU<esc>i

" edit my vimrc file
nnoremap :vsplit $MYVIMRC<cr>

" this is the key to jump to the nerdtree window from any other window
noremap <C-n> :NERDTreeFind<cr>
" pressing this inside any open file in vim will jump to the nerdtree and highlight where that file is -> very useful when you have multiple files open at 
noremap ] :NERDTreeFind<CR>

" bulk commenting
noremap <C-\> v:Commentary<CR>
" set ruby comment character
autocmd FileType ruby setlocal commentstring=#\ %s

" search config
" remap envoke key
" file search using fuzzy file search
nnoremap <silent> <C-f> :FZF<CR>
" keyword search using ripgrep and fzf
nnoremap <silent> <C-g> :RG<CR><CR>

" nerdtree toggle
noremap <C-q> :NERDTreeToggle<CR>

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
nnoremap <C-rp> :let @+ = expand("%")<cr>
" full path
nnoremap <C-ap> :let @+ = expand("%:p")<cr>
" file name
:nnoremap <C-n> :let @+ = expand("%:t")<cr>

" toggle keyword search highlight
nnoremap <F3> :set hlsearch!<CR>

" reload buffers
:nnoremap <silent> <C-S-r> :bufdo :e!<cr>

" find and replace
" nnoremap <C-R>
"   \ :let @s='\<'.expand('<cword>').'\>'<CR>
"   \ :Grepper -cword -noprompt<CR>
"   \ :cfdo %s/<C-r>s//g \| update
"   \<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>
