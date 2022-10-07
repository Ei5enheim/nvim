" This is the default extra key bindings FZF
" \ 'ctrl-t': 'tab split',
let g:fzf_action = {
  \ 'enter': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - Popup window
" Optional
" - xoffset [float default 0.5 range [0 ~ 1]]
" - yoffset [float default 0.5 range [0 ~ 1]]
" - border [string default 'rounded']: Border style
"   - 'rounded' / 'sharp' / 'horizontal' / 'vertical' / 'top' / 'bottom' / 'left' / 'right'
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.7, 'xoffset': 0.95 } }

" Enable per-command history
" - History files will be stored in the specified directory
" - When set, CTRL-N and CTRL-P will be bound to 'next-history' and
"   'previous-history' instead of 'down' and 'up'.
let g:fzf_history_dir = '~/.local/share/fzf-history'

" Customize fzf colors to match your color scheme
" - fzf#wrap translates this to a set of `--color` options
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Any empty ack search will search for the work the cursor is on
let g:rg_use_cword_for_empty_search = 1

function! RipgrepFzf(query, fullscreen)
  echo "im here"
  " Check user policy for blank searches
  if empty(a:query)
    echo "args is empty"
    if !g:rg_use_cword_for_empty_search
      echo "Empty search is disabled"
      return
    endif
  endif

  " If no pattern is provided, search for the word under the cursor
  let l:grepargs = empty(a:query) ? expand("<cword>") : a.query

  "Bypass search if cursor is on blank string
  if l:grepargs == ""
    echo "No regular expression found."
    " return
  endif

  echo "Searching ..."
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(l:grepargs))
  let reload_command = printf(command_fmt, '{q}')
  let options = {'options': ['--phony', '--query', l:grepargs, '--bind', 'change:reload:'.reload_command]}
  let options = fzf#vim#with_preview(options, 'right', 'ctrl-/')
  call fzf#vim#grep(initial_command, 1, options, a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)
