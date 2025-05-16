Add cursors to all target lines (including the one to skip):

1. Cursor on line 1 letter "a" of "apple"
2. `Ctrl-Down` to adds cursor in same column of line 2 ("b" of "banana")
3. `Ctrl-Down` to adds cursor in same column of line 3 ("c" of "cherry"). Note that steps 2 and 3 can be combined using counts, like `2Ctrl-Down`.

**Remove** the unwanted cursor:

4. `Up-arrow` to move to the "banana" line. Use `arrows` to move around instead of `hjkl`, reference [wiki/Quick-start](https://github.com/mg979/vim-visual-multi/wiki/Quick-start#adding-cursors-vertically):

> To make things easier, since `hjkl` move all cursors, you can still use arrows and ctrl-arrows to move around, without moving the cursors as well.

Or use `[` to goto previous cursor.

5. `Q` to delete that cursor ("Remove region")

Now edit the remaining cursors:

6. `e` go to end of word
7. `a_end` to add `_end` at end of those words

Note. Add cursor on second line to finally remove it is absurd. Instead: 

1. Cursor on line 1 letter "a" of "apple"
2. `v` and `Ctrl-n` to add cursor
3. `Down-arrow` twice or `/cherry`
4. `v` and `Ctrl-n` to add cursor
5. `e` go to end of word
6. `a_end` to add `_end` at end of those words
