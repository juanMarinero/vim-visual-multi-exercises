1. Cursor at `w` of `wordB1`.
2. `C-v` enters Vim's native visual block mode (not Visual-Multi)
3. `jj` to visual-block select the next 2 chars below
4. `\\c` to create column-wise cursors
5. `j` to move the multi-cursors down. I.e. to move the cursor to `wordB10a` to `wordB1000a`
6. `e` to go to the end of the word
7. `a_end` to add `_end` at end of those words
8. `Esc` to exit insert mode
9. `Esc` to exit multi-cursor mode
