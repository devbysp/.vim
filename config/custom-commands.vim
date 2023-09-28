" -----------------------------------------------------------
" CUSTOM COMMANDS:
" -----------------------------------------------------------

" Vim theme
command! Dark                   set background=dark
command! Light                  set background=light

" Resource files
command! Keybindings            execute(':e '.g:config_path."/keybindings.vim")
command! Vimrc                  execute(':e '.g:vimrc_path)
command! Vim                    execute(':e '.g:vim_path)
command! Source                 execute(':source '.g:vimrc_path)

" Change line endings
command! Unix                   set ff=unix                                     " LF only
command! LF                     set ff=unix                                     " LF only
command! Dos                    set ff=dos                                      " LF CR
command! Windows                set ff=dos                                      " LF CR
command! LFCR                   set ff=dos                                      " LF CR
