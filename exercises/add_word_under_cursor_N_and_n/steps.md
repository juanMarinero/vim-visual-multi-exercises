1. Cursor on any char of "apple" of line 1
2. `C-n` to add cursor to "apple" of line 1
3. `n` (or `C-n`) to add cursor of next "apple", which is on line 4 (line 2 is not recognized cause prefix `_`, line 3 is not recognized cause suffix `_`)
4. `n` (or `C-n`) to add cursor  of line 6
5. `N` to go to previous cursor (of line 4)
6. `Q` to remove that cursor. FYI: then the multi-cursor jumps to previous region, which is located on line 1, though in this MWE this is irrelevant.
7. `a_end` to add `_end` at end of those words
8. `Esc` to exit multi-cursor mode
