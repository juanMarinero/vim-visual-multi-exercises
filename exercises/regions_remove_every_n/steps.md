Add all *item*-s to VM-regions

1. `gg` to go to the first line (and first non-blank char)
2. `C-n`
3. `\\A` to add 

Remove regions of no colors

4. `3\\R` to remove every 3 regions. To remove each `item` region in lines that indicate quantity: lines 3, 6, 9,...
5. `q` to skip current region at first line. Vim-cursor and first VM-region is now at *item* of second line (`item "red"`)
6. `\\R` to remove every other regions (to remove each `item` region previous to fruit names)

Replace region content with proper field name

7. `c` and type `color`. `Esc` to exit insert-mode
8. `Esc` to exit VM-mode

Add all *items* to VM-regions

9. `gg`
10. `C-n`
11. `\\A` 

Remove regions of no quantity

12. `q` to skip current region at first line
13. `\\R` to remove every other regions (to remove each `item` region previous to fuit names)

Replace region content with proper field name

14. `c` and type `qty`. `Esc` to exit insert-mode
15. `Esc` to exit VM-mode

Alternative applying `leader-e` (`:help vm-transform`)

1. `gg`, `C-n`, `\\A`
2. `\\e` and type `%i%3-2 ? %t : 'qty'`
3. `Esc` to exit VM-mode
4. `gg`, `C-n`, `\\A`
5. `q` to skip current region at first line
6. `\\e` and type `%i%2 ? %t : 'color'`
7. `Esc` to exit VM-mode

We achieved the following:

```
item "apple"
color "red"
qty 2
item "banana"
color "green"
qty 3
item "cherry"
color "red"
qty 20
item "melon"
color "yellow"
qty 1
item "mango"
color "green"
qty 1
item "kiwi"
color "yellow"
qty 4
item "watermelon"
color "dark green"
qty 1
```

All left is plain Vim. No VM related.

1. `gg`
2. `qa` to start recoding macro *a*
3. `0` go to first char
4. `E` to move cursor at end of field
5. `l` to go to next char
6. `r=` to replace the space with an equal sign
7. `A,` to add a comma at end of line
8. `Esc` to exit insert-mode
9. `q` to finish recording macro *a*
10. `uu` to undo last two edits, to undo the macro
10. `qb` to start recoding macro *b*
10. `@a` to run macro *a*
10. `j` to go to next line
10. `@a` to run macro *a*
10. `j` to go to next line
10. `@a` to run macro *a*
10. `x` to delete last comma added
10. `2k` to go two lines up
10. `JJ` to join two lines
10. `j` to go to next line
10. `q` to finish recording macro *b*
10. `6@b` to run macro *b* six times



Note. With `leader-e` one transforms regions with expression. Its `:help vm-transform` states

```
%i%3-2 ? %t : ''	        will delete every third region
```

So *remove* a region differs from *delete* it. Let's try it. We have next initial contentin a file:

```
1 item
2 item
3 item
4 item
5 item
6 item
7 item
8 item
9 item
10 item
11 item
12 item
```

Steps to apply

1. `gg`
2. `w`
3. `C-n`
4. `\\A` 
5. `\\e` and type `%i%3-2 ? %t : ''`
6. `Esc` to exit VM-mode

Result:

```
1 item
2 item
3 
4 item
5 item
6 
7 item
8 item
9 
10 item
11 item
12 
```

Alternative

1. `gg`
2. `w`
3. `C-n`
4. `\\A` 
5. `q` (which skips the current region and goes to next one, in second line)
6. `3\\R` to remove regions of lines current_line-1 + 3*n, i.e. 2-1 + 3*n = 4, 7, 10,...
7. `q` (which skips the current region and goes to next one, in third line)
8. `\\R` to remove alternate [remaining] regions
9. `x` to remove remaining regions
10. `Esc` to exit VM-mode
