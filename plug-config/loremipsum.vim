" ------------------------------------------------------------------------------
" Usage: section>(h1>lorem3)+div>p>lorem100*2
" ------------------------------------------------------------------------------

let g:loremipsum_paragraph_template = {
            \ 'html': '<p>%s</p>'
            \}

" let g:loremipsum_marker = {
"   \   'html': ['<!--lorem-->', '<!--lorem-->', 0]
"   \}
let g:loremipsum_marker = {
    \   'html': ['', '', 0]
    \}

let g:loremipsum_words = 100

let g:loremipsum_files = {}
