filetype plugin indent on " required
syntax on                 " required

autocmd Filetype * AnyFoldActivate               " activate for all filetypes
" or
" autocmd Filetype <your-filetype> AnyFoldActivate " activate for a specific filetype

set foldlevel=0  " close all folds
" or
set foldlevel=99 " Open all folds

" Use Vim's fold commands zo, zO, zc, za, ... to fold / unfold folds (read :h fold-commands for more information). Use key combinations [[ and ]] to navigate to the beginning and end of the current open fold. Use ]k and [j to navigate to the end of the previous block and to the beginning of the next block.
"
" Anyfold (anyfold) ------------------------------------------------------ {{{"
autocmd Filetype python,java,scala AnyFoldActivate  " turn this on for Java"
let g:anyfold_identify_comments=2 " more rigor to identify comments"
let g:anyfold_fold_comments=1 " fold comments by default"
let g:anyfold_comments=['comment','string','external','include']
" ------------------------------------------------------------------------ }}}"
