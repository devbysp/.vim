let g:startify_files_number = 4
let g:startify_relative_path = 0
let g:startify_custom_indices = ['f', 'd', 's', 'a']

let g:startify_lists = [
      \ { 'type': 'files',     'header': ['   Most recently used files']            },
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \ ]

let g:startify_bookmarks = [
      \ {'j': '~/.config/nvim/init.vim'},
      \ ]
