" -----------------------------------------------------------
" FIND TEXT IN PROJECT:
" -----------------------------------------------------------
set wildignore=node_modules/**,coverage/**

function! FindInFiles(text)
    execute ":vimgrep /".a:text."/ **"
    copen
endfun

command! -nargs=1 Find          :call FindInFiles(<args>)
