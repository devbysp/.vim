" ------------------------------------------------------------------------------
" TERMINAL CONFIGRATIONS:
" ------------------------------------------------------------------------------
function! TerminalWindow()
    term
    wincmd J
    setlocal winfixheight
    resize 10
endfun

tnoremap <ESC>                  <C-W> N
