let g:bookmark_display_annotation = 1                                           " Display annotation text on the status line
let g:bookmark_auto_close = 0                                                   " Automatically close bookmarks split when jumping to a bookmark
let g:bookmark_highlight_lines = 1                                              " Enables/disables line highlighting
let g:bookmark_center = 1                                                       " Enables/disables line centering when jumping to bookmark
let g:bookmark_sign = '»'                                                       " Sets bookmark icon for sign column
let g:bookmark_annotation_sign = '"'                                           " Sets bookmark annotation icon for sign column

"| Action                                        | Keybinding   | Command                   |
"|-----------------------------------------------|:------------:|:-------------------------:|
"| Add/remove bookmark at current line           | mm           | :BookmarkToggle           |
"| Add/edit/remove annotation at current line    | mi           | :BookmarkAnnotate <TEXT>  |
"| Jump to next bookmark in buffer               | mn           | :BookmarkNext             |
"| Jump to previous bookmark in buffer           | mp           | :BookmarkPrev             |
"| Show all bookmarks (toggle)                   | ma           | :BookmarkShowAll          |
"| Clear bookmarks in current buffer only        | mc           | :BookmarkClear            |
"| Clear bookmarks in all buffers                | mx           | :BookmarkClearAll         |
