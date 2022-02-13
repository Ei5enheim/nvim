" inside paranthesis
:onoremap p i(

" next paranthesis
:onoremap np :<c-u>normal! f(vi(<cr>

" prev paranthesis
:onoremap pp :<c-u>normal! F)vi(<cr>

" next curly brace
:onoremap nb :<c-u>normal! f{vi{<cr>

" prev curly brace
:onoremap pb :<c-u>normal! F}vi{<cr>
