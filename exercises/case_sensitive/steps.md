1. Cursor on any char of first "apple" of line 1
2. `C-n` to add cursor to "apple" of line 1
3. `n` (or `C-n`) to add cursor of next "apple" (still on line 1). Note that if added prefix/suffix like "_" then it's not recognized as next regex-match. Uppercase case sensitive also discards "APPLE" alike ones
4. `n` (or `C-n`) to add cursor of next "apple" (first word of line 2)
5. `n` (or `C-n`) to add cursor of next "apple" (pen-ultimate word of line 2). Or replace steps 3 to 5 with directly `\\A` to select all, see `:h vm-select-all`
6. `r~` to replace matches with "~~~~~". Read note below
7. `Esc` to exit multi-cursor mode


Note. `:help vm-cursor-mode` states:

> r           replace single character
