1. Cursor at `w` of `wordB1a`.
2. `Ctrl-Down` to add a cursor on the line below
3. `Ctrl-Down` again to add another cursor on the third line. Now multi-cursors are in `w` of `wordB1a`, `wordB10a` and `wordB100a`. Note that steps 2 and 3 can be combined using counts, like `2Ctrl-Down`.
4. `j` to move the multi-cursors down. I.e. to move the cursor to `wordB10a` to `wordB1000a`. Reference [wiki/Quick-start](https://github.com/mg979/vim-visual-multi/wiki/Quick-start):

> To make things easier, since `hjkl` move all cursors, you can still use arrows and ctrl-arrows to move around, without moving the cursors as well.

5. `e` goes to end of word. Read `:h Q_tm`
6. `a_end` to add `_end` after cursor position. `:help vm-cursor-mode` states:

> You can enter |insert-mode| with `i`, `I`, `a`, `A`, and only from cursor mode also with `o` and `O`.

7. `Esc` to exit insert mode
8. `Esc` to exit multi-cursor mode

Bonus. In 4th step `j` moves the multi-cursors down. [wiki/Quick-start#adding-cursors-vertically](https://github.com/mg979/vim-visual-multi/wiki/Quick-start#adding-cursors-vertically) shows another example which uses `k` to move the multi-cursors up.
