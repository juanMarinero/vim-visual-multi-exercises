" Override the default mappings 
let g:VM_maps = {}

" Add undo/redo
let g:VM_maps["Undo"] = 'u'
let g:VM_maps["Redo"] = '<C-r>'

" Kitty's terminal doesn't properly handle C-Up/C-Down
" thus replace them with \\j/\\k
let g:VM_maps['Add Cursor Down'] = '\\j'
let g:VM_maps['Add Cursor Up']   = '\\k'
