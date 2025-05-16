1. `gg` to go to the first line (and first non-blank char)
2. Press `o`, insert text `new line`, then `Esc` to exit insert mode
3. Undo the change by pressing `u`, then press `gg` to go back
4. Press `2<C-Down>`
5. Finally press `.`
6. `Esc` to exit VM-mode

We did actually take advantage of the `o` mapping in cursor mode.
`o` mapping varies in different VM modes. `:help vm-cursor-mode` states:

> You can enter |insert-mode| with `i`, `I`, `a`, `A`, and only from cursor mode also with `o` and `O`.

Next alternative might be clearer.

1. `gg` to go to the first line
2. `2C-Down` to add VM-cursors in next 2 lines
3. Press `o`, insert text `new line`, then `Esc` to exit insert mode. This step was previously achieved just with `.` (pressing dot)
4. `Esc` to exit VM-mode
