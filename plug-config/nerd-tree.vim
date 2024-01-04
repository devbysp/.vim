let g:NERDTreeWinSize = 50
let g:NERDTreeChDirMode = 2
let g:NERDTreeMinimalMenu = 0
let g:NERDTreeCascadeSingleChildDir = 0
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''

let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:juliaPurple = "9558B2"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:vuejs = '42B883'

let g:WebDevIconsDefaultFolderSymbolColor = s:green
let g:WebDevIconsDefaultOpenFolderSymbolColor = s:lightGreen
let g:DevIconsEnableFoldersOpenClose = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
let g:WebDevIconsNerdTreeBeforeGlyphPadding = ''
set ambiwidth=double

" function! NERDTreeHighlightFile(extension, fg)
"     exec 'autocmd filetype nerdtree syn match NERDTree'. a:extension .'File #^\s\+.*'. a:extension .'$#'
"     exec 'autocmd filetype nerdtree highlight NERDTree'. a:extension .'File ' .' ctermfg='. a:fg .' guifg='. a:fg
" endfunction
"
"
" " JavaScript
" call NERDTreeHighlightFile('ts',          'LightYellow')
" call NERDTreeHighlightFile('js',          'LightYellow')
" call NERDTreeHighlightFile('test.ts',     'LightGreen')
" call NERDTreeHighlightFile('test.js',     'LightGreen')
"
" " Frontend
" call NERDTreeHighlightFile('tsx',         'DarkYellow')
" call NERDTreeHighlightFile('jsx',         'DarkYellow')
" call NERDTreeHighlightFile('test.tsx',    'Green')
" call NERDTreeHighlightFile('test.jsx',    'Green')
" call NERDTreeHighlightFile('html',        'DarkYellow')
"
" " Style
" call NERDTreeHighlightFile('css',         'LightBlue')
" call NERDTreeHighlightFile('svg',         'LightBlue')
" call NERDTreeHighlightFile('jpg',         'LightBlue')
" call NERDTreeHighlightFile('png',         'LightBlue')
" call NERDTreeHighlightFile('ico',         'LightBlue')
"
" " XML
" call NERDTreeHighlightFile('xml',         'Blue')
"
" " Cloud & Docker
" call NERDTreeHighlightFile('yaml',        'LightCyan')
" call NERDTreeHighlightFile('Dockerfile',  'LightCyan')
"
" " Documentation
" call NERDTreeHighlightFile('md',          'DarkRed')
" call NERDTreeHighlightFile('excalidraw',  'LightRed')
"
" " Config files
" call NERDTreeHighlightFile('json',        'LightGray')
" call NERDTreeHighlightFile('config.*',    'Gray')
" call NERDTreeHighlightFile('properties',  'Gray')
