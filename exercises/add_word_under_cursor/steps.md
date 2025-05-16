1. Cursor on any char of "apple" of line 1
2. `C-n` to add cursor to "apple" of line 1
3. `n` (or `C-n`) to add cursor of next "apple", which is on line 4 (line 2 is not recognized cause prefix `_`, line 3 is not recognized cause suffix `_`)
4. `q` to skip current cursor and jump to next "apple", which it's on line 6 (line 5 is not recognized cause both prefix and suffix `_`)
5. `a_end` to add `_end` at end of those words
6. `Esc` to exit multi-cursor mode
