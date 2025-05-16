Based on [issue #53](https://github.com/mg979/vim-visual-multi/issues/53) let's have next example that we want to transpose programmatly.

```
[[1, 2]
 [3, 4]]
```


**WRONG**. Next step 5 (`f2`) updates Vim's last search pattern to 2, which causes VM to drop the first selection (1) because it thinks you're now only working with 2. 

`f<char>` is analogous to `hjkl` in [wiki/Quick-start](https://github.com/mg979/vim-visual-multi/wiki/Quick-start#adding-cursors-vertically):

> To make things easier, since `hjkl` move all cursors, you can still use arrows and ctrl-arrows to move around, without moving the cursors as well.

1. `gg` to go to the first line (and first non-blank char)
2. `0` to go to start of line (regardless of whether it is a blank or not)
3. `f1` to move to 1st `1`
4. `:call vm#commands#add_cursor_at_word(1, 1)` to add cursor-word
5. `f2` to move to 1st `2`
6. `:call vm#commands#add_cursor_at_word(1, 1)` to add cursor-word
7. `j` to go 1 line down
8. `0` to go to start of line
9. `f3` to move to 1st `3`
10. `:call vm#commands#add_cursor_at_word(1, 1)` to add cursor-word
11. `f4` to move to 1st `4`
12. `:call vm#commands#add_cursor_at_word(1, 1)` to add cursor-word
13. `:call b:VM_Selection.Edit.transpose()` to transpose

Equivalent (still wrong)

```vim
:execute 'normal gg0' | execute 'normal f1' | call vm#commands#add_cursor_at_word(1, 1)
:                       execute 'normal f2' | call vm#commands#add_cursor_at_word(1, 1)
:execute 'normal j0'  | execute 'normal f3' | call vm#commands#add_cursor_at_word(1, 1)
:                       execute 'normal f4' | call vm#commands#add_cursor_at_word(1, 1)
:call b:VM_Selection.Edit.transpose()
```

**RIGHT**

We could use arrows (or Ctrl-arrows), though search commands (`/`) are more convenient, read `:h vm-slash` and `:h vm-regex-search`. Another approach is to keep using `f<char>` but run `\\<Space>` before the first `f`-motion, read `:h vm-mappings-toggle` 

1. Same as in previous step
2. Same as in previous step
3. Same as in previous step
4. Same as in previous step
5. `/2` to search for `2` (and press Enter)
6. Same as in previous step
7. Same as in previous step
8. Same as in previous step
9. `/3` to search for `3` (and press Enter)
10. Same as in previous step
11. `/4` to search for `4` (and press Enter)
12. Same as in previous step
13. `Tab` to switch to "extend mode"
14. `:call b:VM_Selection.Edit.transpose()` to transpose


Equivalent

```vim
:execute 'normal gg0' | execute 'normal f1'      | call vm#commands#add_cursor_at_word(1, 1)
:                       execute "normal /2\<CR>" | call vm#commands#add_cursor_at_word(1, 1)
:                       execute "normal /3\<CR>" | call vm#commands#add_cursor_at_word(1, 1)
:                       execute "normal /4\<CR>" | call vm#commands#add_cursor_at_word(1, 1)
:call b:VM_Selection.Global.change_mode(1)
:call b:VM_Selection.Edit.transpose()
```

Now let's make the testing text a little **more complex**, like:

```
[[1, 2, 3, 4]
 [5, 6, 7, 8]]
```

Then the vim-steps to transpose could be next

```vim
function! MultiCursorCustomSearchAndAdd(start,end)
  for number in range(a:start, a:end)
    " Search for the current number
    execute "normal! /" . number . "\<CR>"
    " Add Multi-Cursor
    call vm#commands#ctrln(v:count1)
  endfor
endfunction

function! MultiCursorCustomTranspose(...)
  " Set iter to 1 if no arg is passed
  let l:iter = a:0 > 0 ? a:1 : 1
  " Go to 1st line and 1st char
  execute 'normal gg0'
  " Add Multi-Cursors
  call MultiCursorCustomSearchAndAdd(1,8)
  " Transpose iter times
  for number in range(1, l:iter)
    call b:VM_Selection.Edit.transpose()
  endfor
endfunction
```

Thus if we run `:call MultiCursorCustomTranspose()` we get 

```
[[4, 1, 2, 3]
 [8, 5, 6, 7]]
```

Notice that we did not exit the Multi-Cursor mode (`Esc`), therefore we can further transpose it.

If then we tranpose once more (`\\t` or `:call b:VM_Selection.Edit.transpose()`) we achieve: 

```
[[3, 4, 1, 2]
 [7, 8, 5, 6]]
```

If then we tranpose again it becomes the desired result. Press `Esc` to exit the Multi-Cursor mode. 

```
[[2, 3, 4, 1]
 [6, 7, 8, 5]]
```

Note. If initially we run `:call MultiCursorCustomTranspose(3) | execute "normal \<Esc>"` we get this same result.

Finally if we transpose again we get the original result.
