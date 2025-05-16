1. Cursor at first "p" of "apple" of line 1
2. `v` to enter visual-mode
3. `l` to select the next char (another "p" of "apple" of line 1)
4. `C-n` to enter cursor-mode
5. `nnnnn` to select next 5 "pp"-s, no matter if they are part of "apple" or not. Or directly `\\A` to select all, see `:h vm-select-all`
6. `\\CU` to convert to uppercase
7. `Esc` to exit multi-cursor mode
