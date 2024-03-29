" -----------------------------------------------------------
" FILE BROWSING:
" -----------------------------------------------------------

" Tweaks for browsing
let g:netrw_banner=0		                                                      " disable annoying banner
let g:netrw_brows_split=4	                                                    " open in prior window
let g:netrwaltv=1			                                                        " open splits to the right
let g:netrw_liststyle=3		                                                    " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^|\s\s\)zs\.\S\+'

" NOW WE CAN:
" - :edit a folder to open a file browser
" - <CR>/v/t to open in an h-split/v-split/tab
" - check |netrw-browse-maps| for more mappings
