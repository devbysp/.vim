" ------------------------------------------------------------------------------
" TERMINAL CONFIGRATIONS:
" ------------------------------------------------------------------------------
function! TerminalWindow()
    split
    term
    wincmd J
    setlocal winfixheight
    resize 10
endfun

tnoremap <ESC>                  <C-\><C-N>
