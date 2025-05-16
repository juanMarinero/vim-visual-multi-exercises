1. Cursor at `w` of `wordB1`.
2. `C-v`
3. `jj`
4. `\\c`
5. `c-n`. Notice how in 1st line it's selected `wordB1a`, in 2nd `wordB10a` and in 3rd `wordB100a`.
6. `\\C`
7. It asks `Case conversion: (u/U/C/t/c/P/s/S/-/./ )`. For example type `U` to set all to uppercase
8. `Esc`

Note. To toggle upper-/lowercase of each char use directly `~`. `:help vm-cursor-mode` states:

> ~           change case of single character

At least one regex (VM-cursor) already had at least one char in uppercase, thus `~` is no alternative here to convert matches to uppercase.
