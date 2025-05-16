Purpose: set *age*s as rightmost field-value. Keep formatting: a comma and one space in between fied-values.

Shift *age* field-value (and its comma-space) to the right.

1. `gg` to go to the first line (and first non-blank char)
2. 4`Ctrl-Down` to add a cursor on the next 4 lines below
3. `f,` to move each VM-cursor to the first comma
4. `w` to move them to start of next word
5. `Tab` to enter extend mode
6. `E` to grow region till end of Word, reaching next comma
7. `l` to include also next char (space)
8. `<M-S-Right>` to shift extended regions all the way to the right. Repeat as needed

Delete the rightmost comma

9. `Tab` to toggle back to VM-column mode
10. `E` to go to end of Word
11. `x` deletes last char (a comma that we shifted)

Add missing comma

12. `gE` to go to end of previous Word, or `BBE`. Read vim *Text object motions* help `:h Q_tm`
13. `a,` to add a comma
14. `Esc` to exit instert mode

Remove spaces in between last two field-values that do not comply with the formatting

15. `Tab` to enter extend mode
16. `w` to extend regions to start of next word (last field)
17. `h` to shink from each region the last char (unselect first letter of last field)
18. `h` unselect rightmost space of the region
19. `x` to delete regions
20. `Esc` to exit multi-cursor mode

Remove trailing spaces

21. Remove trailing withspaces. Run `:%s/\s\+$//`
