1. Cursor on any char of "an" of line 1
2. `C-n` to add cursor-word `\<an\>`
3. `\\w` to toggle whole word search. Pattern now is `an` without `\<` nor `\>`
4. `Right-arrow` to move to "n" of "nual" of line 1
5. `C-n` to add cursor-word `\<nual\>`
6. `\\w` to toggle whole word search. Pattern now is `nual` without `\<` nor `\>`
7. Press `n` till no more matches in those 3 lines
8. <code>\\\\\`</code> (`:help vm-mappings-buffer`) and after prompt type `i`. Or directly `:call b:VM_Selection.Funcs.regions_contents()` produces (adding fields "Whole-word" and "line")

```
Index   ID      A       B       w       l / L           a / b            --- Pattern ---         --- Regions contents ---  --- Whole-word ---  --- line ---
0       1       15      16      2       1 / 1           15 / 16         \<an\>                  an                        an                   1
1       2       22      25      4       1 / 1           22 / 25         \<nual\>                nual                      nual                 1
2       3       54      55      2       2 / 2           28 / 29         an                      an                        biannual             2
3       4       56      59      4       2 / 2           30 / 33         nual                    nual                      biannual             2
4       5       94      95      2       2 / 2           68 / 69         an                      an                        annual               2
5       6       96      99      4       2 / 2           70 / 73         nual                    nual                      annual               2
6       7       123     124     2       3 / 3           16 / 17         an                      an                        an                   3
7       8       127     128     2       3 / 3           20 / 21         an                      an                        and                  3
8       9       132     133     2       3 / 3           25 / 26         an                      an                        annual               3
9       10      134     137     4       3 / 3           27 / 30         nual                    nual                      annual               3
```

8. `\\s` to split regions. In prompt type `n` (and press Enter)

```
V-M  10 / 10  ['nual', 'an']
Pattern to remove > n
```

9. `:call b:VM_Selection.Funcs.regions_contents()` outputs next. Notice `pattern`-s are gone

```
Index   ID      A       B       w       l / L           a / b            --- Pattern ---         --- Regions contents ---
0       27      15      15      1       1 / 1           15 / 15                                 a
1       28      23      25      3       1 / 1           23 / 25                                 ual
2       29      54      54      1       2 / 2           28 / 28                                 a
3       30      57      59      3       2 / 2           31 / 33                                 ual
4       31      94      94      1       2 / 2           68 / 68                                 a
5       32      97      99      3       2 / 2           71 / 73                                 ual
6       33      123     123     1       3 / 3           16 / 16                                 a
7       34      127     127     1       3 / 3           20 / 20                                 a
8       35      132     132     1       3 / 3           25 / 25                                 a
9       36      135     137     3       3 / 3           28 / 30                                 ual
```

10. `\\CU` to convert to uppercase
11. `:call b:VM_Selection.Funcs.regions_contents()` echoes

```
Index   ID      A       B       w       l / L           a / b            --- Pattern ---         --- Regions contents ---
0       27      15      15      1       1 / 1           15 / 15                                 A
1       28      23      25      3       1 / 1           23 / 25                                 UAL
2       29      54      54      1       2 / 2           28 / 28                                 A
3       30      57      59      3       2 / 2           31 / 33                                 UAL
4       31      94      94      1       2 / 2           68 / 68                                 A
5       32      97      99      3       2 / 2           71 / 73                                 UAL
6       33      123     123     1       3 / 3           16 / 16                                 A
7       34      127     127     1       3 / 3           20 / 20                                 A
8       35      132     132     1       3 / 3           25 / 25                                 A
9       36      135     137     3       3 / 3           28 / 30                                 UAL
```

12. `Esc` to exit multi-cursor mode
