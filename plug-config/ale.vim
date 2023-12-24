" -----------------------------------------------------------
" Linting JavaScripts And TypeScript:
" -----------------------------------------------------------
"
" Install:
"
"  - tsserver:      npm install --global typescript / LSP for javascript (tsserver)
"  - eslint:        npm install --global eslint     / can be installed as dev dependency
"  - tslint:        npm install --global tslint     / can be installed as dev dependency
"  - prettier:      npm install --global prettier
"
"  - fixjson:       npm install --global fixjson
"
"  - pylsp:         pip install python-lsp-server   / pacman -S python-lsp-server
"  - ruff:          pip install ruff                / pacman -S python-ruff
"  - pylint:        pip install pylint              / pacman -S python-pylint
"
"  - stdio:         npm install --global stdio
"
" -----------------------------------------------------------

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\   'javascriptreact': ['eslint'],
\   'typescript': ['eslint'],
\   'typescriptreact': ['eslint'],
\   'purescript': ['purs-tidy'],
\   'markdown': ['prettier'],
\   'html': ['prettier'],
\   'css': ['prettier'],
\   'json': ['fixjson'],
\   'python': ['ruff']
\}

let g:ale_linters = {
\   'javascript': ['tsserver'],
\   'javascriptreact': ['tsserver'],
\   'typescript': ['tsserver'],
\   'typescriptreact': ['tsserver'],
\   'purescript': ['purescriptls'],
\   'markdown': ['prettier'],
\   'html': ['prettier'],
\   'css': ['prettier'],
\   'python': ['pylsp', 'pylint']
\}

" -----------------------------------------------------------
" Ale Configurations:
" -----------------------------------------------------------

" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1

" When set to `1`, only the linters from |g:ale_linters| and |b:ale_linters|
" will be enabled. The default behavior for ALE is to enable as many linters
" as possible, unless otherwise specified.
let g:ale_linters_explicit = 0

" Automatic imports from external modules.
let g:ale_completion_autoimport = 1

" Enable completion where available.
let g:ale_completion_enabled = 1

" ALE for displaying error information in the status bar.
let g:airline#extensions#ale#enabled = 0

" Locallist list instead of the loclist
let g:ale_open_list = 0
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 0

" Shows suggestions alog the error messages
let g:ale_lsp_suggestions = 1

" When this option is set to `1`, ALE will show code actions and rename
" capabilities in the right click mouse menu when there's a LSP server or
" tsserver available
"
" This feature is only supported in GUI versions of Vim.
let g:ale_popup_menu_enabled = 0

" If enabled, this option will tell tsserver to find and replace text in
" comments when calling |ALERename
let g:ale_rename_tsserver_find_in_comments = 1

" If enabled, this option will tell tsserver to find and replace text in
" strings when calling |ALERename|.
let g:ale_rename_tsserver_find_in_strings = 1

" When this option is set to `1`, balloon messages will be displayed for
" problems or hover information if available.
" let g:ale_set_balloons = has('gui_running') ? 'hover' : 0
let g:ale_set_balloons = 1


"  ALE will use the following highlight groups for problems:
"
"  |ALEError|        - Items with `'type': 'E'`
"  |ALEWarning|      - Items with `'type': 'W'`
"  |ALEInfo.|        - Items with `'type': 'I'`
"  |ALEStyleError|   - Items with `'type': 'E'` and `'sub_type': 'style'`
"  |ALEStyleWarning| - Items with `'type': 'W'` and `'sub_type': 'style'`
let g:ale_set_highlights = 0

" When this option is set to `1`, the |sign| column will be populated with
" signs marking where problems appear in the file.
let g:ale_set_signs = 1

" When this option is set to `1`, Vim with |popupwin| will use a
" floating window for ALEDetail output.
let g:ale_detail_to_floating_preview = 0

" Logs in console debug messges
let g:ale_debug = 0

" -----------------------------------------------------------
" Vim LSP Configurations:
" -----------------------------------------------------------

" Enables a floating window of diagnostic error for the current line to status.
let g:lsp_diagnostics_float_cursor = 1

" Enables virtual text to be shown next to diagnostic errors.
let g:lsp_diagnostics_virtual_text_enabled = 0

" Enables echo of diagnostic error for the current line to status.
let g:lsp_diagnostics_echo_cursor = 1

" Enables semantic highlighting.
let g:lsp_semantic_enabled = 1

" Infer param names and type names
let g:lsp_inlay_hints_enabled = 1
let g:lsp_inlay_hints_mode = {
\  'normal': ['curline'],
\}

" -----------------------------------------------------------
" CUSTOM COMMANDS:
" -----------------------------------------------------------

" -----------------------------------------------------------
" Navigation:
" -----------------------------------------------------------
command! Definition             :ALEGoToDefinition
command! DefinitionVert         :ALEGoToDefinition -vsplit
command! DefinitionSplit        :ALEGoToDefinition -split

" You can jump back to the position you were at before going to a reference of
" something with jump motions like CTRL-o. (CTRL+i jumps forward)
command! References             :ALEFindReferences -relative

" -----------------------------------------------------------
" Refactoring:
" -----------------------------------------------------------
command! Rename                 :ALERename
command! FileRename             :ALEFileRename
command! Import                 :ALEImport
command! CodeAction             :ALECodeAction

" -----------------------------------------------------------
" Navigate Errors:
" -----------------------------------------------------------
command! NextError              :ALENextWrap
command! PreviousError          :ALEPreviousWrap

" -----------------------------------------------------------
" Display:
" -----------------------------------------------------------
command! Details                :ALEDetail
command! Hover                  :ALEHover
command! QuickFix               :ALEPopulateQuickfix
