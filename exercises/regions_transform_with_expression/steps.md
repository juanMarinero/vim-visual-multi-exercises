VM-extended selection to all `item`-s

1. `gg` to go to the first line (and first non-blank char)
2. `C-n` to add current word as VM-cursor
3. `\\A` to add rest of matches as VM-cursor

Transform regions with expression to prepend `[index]/[total]`, where `index`starts at 1.

4. `\\e` and type `%i+1 ."/". %N ." ". %t`. Explained in `:help vm-transform`

Extended selection includes `[index]/[total] item` but we want to limit it to `total`.

5. `gE` to shrink it to `[index]/[total]` and Vim-cursor is at the last digit of `[total]`. Read `:h Q_tm`
6. `o` to jump the vim-cursor to start/end of visual-selection, read `:h visual-change`. It was at end (last [and here only] digit of `[total]`), so this map moves the vim-cursor to the first [and here only] digit of `[index]`
7. `E` to shrink the VM-extended selection to just the only digit of `[total]`

Multiply *total* by `1.5`

8. `\\e` and type `%f * 1.5`
9. `Esc`to exit VM mode

Note. `o` mapping varies in different VM modes. `:help vm-cursor-mode` states:

> You can enter |insert-mode| with `i`, `I`, `a`, `A`, and only from cursor mode also with `o` and `O`.

Read [Dot to add content](#dot-to-add-content) exercise to see `o` mapping inserting text.
