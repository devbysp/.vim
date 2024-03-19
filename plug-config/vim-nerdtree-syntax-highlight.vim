let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:juliaPurple = "9558B2"
let s:red = "AE402F"
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
let s:gray = "AAAAAA"


let s:image = s:green
let s:test = s:lightGreen
let s:config = s:red
let s:style = s:lightPurple
let s:generated = s:gray
let s:documentation = s:yellow

" Settings
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1
let g:NERDTreeHighlightFoldersFullName = 1

" Extension
let g:NERDTreeExtensionHighlightColor = {}
let g:NERDTreeExtensionHighlightColor['vim'] = s:white

let g:NERDTreeExtensionHighlightColor['css'] = s:juliaPurple
let g:NERDTreeExtensionHighlightColor['excalidraw'] = s:documentation

let g:NERDTreeExtensionHighlightColor['png'] = s:image
let g:NERDTreeExtensionHighlightColor['svg'] = s:image
let g:NERDTreeExtensionHighlightColor['ico'] = s:image

" Exact match
let g:NERDTreeExactMatchHighlightColor = {}
let g:NERDTreeExactMatchHighlightColor['favicon.ico'] = s:image

let g:NERDTreeExactMatchHighlightColor['node_modules'] = s:generated
let g:NERDTreeExactMatchHighlightColor['public'] = s:generated

let g:NERDTreeExactMatchHighlightColor['doc'] = s:documentation

let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:config
let g:NERDTreeExactMatchHighlightColor['credential[s]*'] = s:config
let g:NERDTreeExactMatchHighlightColor['init.vim'] = s:config
let g:NERDTreeExactMatchHighlightColor['config'] = s:config
let g:NERDTreeExactMatchHighlightColor['vim'] = s:config
let g:NERDTreeExactMatchHighlightColor['plug-config'] = s:config
let g:NERDTreeExactMatchHighlightColor['tsconfig.json'] = s:config

" PatternMatch
let g:NERDTreePatternMatchHighlightColor = {}
let g:NERDTreePatternMatchHighlightColor['[_\.]vimrc$'] = s:config
let g:NERDTreePatternMatchHighlightColor['package[\-a-z]*.json$'] = s:config
let g:NERDTreePatternMatchHighlightColor['.*config.*'] = s:config
let g:NERDTreePatternMatchHighlightColor['.*plugins.*.vim'] = s:config
let g:NERDTreePatternMatchHighlightColor['.*\.test\..*'] = s:test
let g:NERDTreePatternMatchHighlightColor['.*\.spec\..*'] = s:test
