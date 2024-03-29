" Position of the prview window
let g:quickr_preview_position = 'right'

" Automatically open the preview window
let g:quickr_preview_on_cursor = 1

" Auto close quickfix on enter
let g:quickr_preview_exit_on_enter = 0

" Allow modifications in the preview window
let g:quickr_preview_modifiable = 0

" Disable quick preview keybindings
let g:quickr_preview_keymaps = 0

" create a self-clearing autocommand group called 'qf'
augroup qf
    " clear all autocommands in this group
    autocmd!

    " do :cwindow if the quickfix command doesn't start
    " with a 'l' (:grep, :make, etc.)
    autocmd QuickFixCmdPost [^l]* cwindow 15

    " do :lwindow if the quickfix command starts with
    " a 'l' (:lgrep, :lmake, etc.)
    autocmd QuickFixCmdPost l*    lwindow 15
augroup END

" Clear quickfix list
function! s:clearQuickfixList()
    call setqflist([])
    call ClosePreviewWindow()
    cclose
endfunction

command! ClearQuickfixList call s:clearQuickfixList()
