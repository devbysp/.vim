let g:asyncomplete_auto_popup = 1

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ asyncomplete#force_refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" allow modifying the completeopt variable, or it will
" be overridden all the time
let g:asyncomplete_auto_completeopt = 1
set completeopt=menuone,noinsert,noselect,preview

autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#flow#get_source_options({
    \ 'name': 'flow',
    \ 'allowlist': ['javascript'],
    \ 'completor': function('asyncomplete#sources#flow#completor'),
    \ 'config': {
    \    " Resolves 'flow' in the closest node_modules/.bin directory (in case
    \    " flow is installed via 'npm install flow-bin' locally). Falls back to
    \    " 'flowbin_path' (see below) if can't find it.
    \    'prefer_local': 1,
    \    " Path to 'flow' executable.
    \    'flowbin_path': expand('~/bin/flow'),
    \    " Displays additional typeinfo exposed by flow, if any is provided.
    \    " Defaults to 0.
    \    'show_typeinfo': 1
    \  },
    \ }))
