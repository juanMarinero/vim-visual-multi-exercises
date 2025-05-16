1. `gg` to go to the first line (and first non-blank char)
2. Press `2<C-Down>`
3. Press `dw` to remove the next word, here "item"
4. Press `.` to repeat, and remove the next word, here "="
5. `Esc` to exit VM-mode

Note that the `.` (dot command) ignores any count. As `:h vm-run-dot` states its aim is **one single** repeat.
