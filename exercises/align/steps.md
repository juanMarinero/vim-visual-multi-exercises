1. `gg` to go to the first line (and first non-blank char)
2. 4`Ctrl-Down` to add a cursor on the next 4 lines below
3. `f,` to move each VM-cursor to the first comma
4. `w` to move them to start of next word
5. `\\a` to align them
6. Repeat the three previous steps twice more to align all fields
7. `Esc` to exit multi-cursor mode

With `[count]\\<`

1. `gg0`
2. 4`Ctrl-Down`
3. `f,` to move each VM-cursor to the first comma
4. `\\<a` to allign by next "a" char, i.e. first letter of next field "age" 
5. `f,` to move each VM-cursor to next comma
6. `\\<h` to allign by next "h" char, i.e. first letter of next field "hobby" 
7. `f,` to move each VM-cursor to next comma
8. `\\<b` to allign by next "b" char, i.e. first letter of next field "best_friend" 
9. `Esc`

Using `\\>`

1. `gg0`
2. 4`Ctrl-Down`
3. `\\>` and type `age` as regex pattern. Then press `Enter` 
4. `\\>` and type `hobby` as regex pattern. Then press `Enter` 
5. `\\>` and type `best_friend` as regex pattern. Then press `Enter` 
6. `Esc`
