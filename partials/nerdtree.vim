" NERDTree config
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * silent NERDTreeMirror
" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
" Automatically delete the buffer of the file you just deleted
let NERDTreeAutoDeleteBuffer = 1
" close the tab if the only windown is nerdtree
" autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
autocmd BufEnter * if tabpagewinnr(tabpagenr(), '$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
" make nerdtree prettier
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
