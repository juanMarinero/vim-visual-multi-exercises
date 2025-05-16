1. `gg` to go to the first line (and first non-blank char)
2. `\\/` opens a prompt `/`
3. type `s[oO]m` (and press `Enter`) to add as VM-cursors the words that match the regexes `som` and `sOm`. Alternative use `s\(o\|O\)m`
4. `\\A` to select all VM-cursors, see `:h vm-select-all`
5. `r~` to replace each char with `~`
6. `Esc` to exit VM-mode
