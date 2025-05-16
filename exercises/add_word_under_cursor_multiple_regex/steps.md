1. Cursor on any char of "apple" of line 1
2. `C-n` to add cursor to "apple" of line 1
3. `n` (or `C-n`) to add cursor of next "apple" (still on line 1), (if added prefix/suffix like "_" then it's not recognized as next regex-match)
4. `n` (or `C-n`) to add cursor of next "apple" (first word of line 3)
5. `q` to skip current cursor and jump to next "apple", which it's last "apple" of same line 3
6. `Up-arrow` to move to previous line and same column, i.e. to a letter of last "cherry" of line 2
7. `C-n` to add a NEW cursor to "cherry" of line 2. Notice that in this example we don't want to have the first "cherry" of that line, otherwise we could (A) go with arrows there before pressing `C-n` or (B) just after current `C-n` we could press `Nn` to also include it and return cursor position to current one
8. `n` (or `C-n`) to add a NEW cursor of "apple" of "cherry". Which adds first "apple" of line 3
9. `q` to skip current cursor and jump to next "apple" or "cherry", which it's last "apple" of same line 3 which we already had under cursor anyhow
10. `n` (or `C-n`) to add a NEW cursor of "apple" of "cherry". Which adds first "cherry" of line 4
11. `n` (or `C-n`) to add a NEW cursor of "apple" of "cherry". Which adds fourth "cherry" of line 4
12. `\\CU` to convert to uppercase
13. `Esc` to exit multi-cursor mode
