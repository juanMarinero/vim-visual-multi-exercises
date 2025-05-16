The vim-steps to rotate could be next

```vim
function! MultiCursorCustomSearchAndAdd(start,end)
  for number in range(a:start, a:end)
    " Search for the current number
    execute "normal! /" . number . "\<CR>"
    " Add Multi-Cursor
    call vm#commands#add_cursor_at_word(1, 1)
  endfor
endfunction

function! MultiCursorCustomRotate(...)
  " Set iter to 1 if no arg is passed
  let l:iter = a:0 > 0 ? a:1 : 1
  " Go to 1st line and 1st char
  execute 'normal gg0'
  " Add Multi-Cursors
  call MultiCursorCustomSearchAndAdd(1,8)
  " Switch to extend mode
  call b:VM_Selection.Global.change_mode(1)
  " Rotate iter times
  for number in range(1, l:iter)
    call b:VM_Selection.Edit.rotate()
  endfor
endfunction
```

Thus if we run `:call MultiCursorCustomRotate()` we get 

```
[[2, 3, 4, 5]
 [6, 7, 8, 1]]
```

Notice that we did not exit the Multi-Cursor mode (`Esc`), therefore we can further rotate it.

If then we rotate once more (`:call b:VM_Selection.Edit.rotate()`) we achieve: 

```
[[3, 4, 5, 6]
 [7, 8, 1, 2]]
```

If then we rotate again it becomes: 

```
[[4, 5, 6, 7]
 [8, 1, 2, 3]]
```

Rotate again to get

```
[[5, 6, 7, 8]
 [1, 2, 3, 4]]
```

Rotate again to get

```
[[6, 7, 8, 1]
 [2, 3, 4, 5]]
```

Rotate again to get

```
[[7, 8, 1, 2]
 [3, 4, 5, 6]]
```

If then we rotate again it becomes the desired result. Press `Esc` to exit the Multi-Cursor mode. 

```
[[8, 1, 2, 3]
 [4, 5, 6, 7]]
```

Note. If initially we run `:call MultiCursorCustomRotate(7) | execute "normal \<Esc>"` we get this same result.

Finally if we rotate again we get the original result.
