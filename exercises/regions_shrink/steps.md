1. Cursor on any char of "an" of line 1
2. `C-n` to add cursor-word `\<an\>`
3. `\\w` to toggle whole word search. Pattern now is `an` without `\<` nor `\>`
4. `Right-arrow` to move to "n" of "nual" of line 1
5. `C-n` to add cursor-word `\<nual\>`
6. `\\w` to toggle whole word search. Pattern now is `nual` without `\<` nor `\>`
7. `Right-arrow` to move to any char of "Berlinale" of line 1
8. `C-n` to add cursor-word
9. Press `n` till no more matches in those 3 lines. Or use `\\A`, see `:h vm-select-all`
10. `:call b:VM_Selection.Funcs.regions_contents()` produces (adding fields "Whole-word" and "line")

```
Index   ID      A       B       w       l / L           a / b            --- Pattern ---         --- Regions contents ---  --- Whole-word ---  --- line ---
0       1       15      16      2       1 / 1           15 / 16         \<an\>                  an                        an                   1
1       2       19      22      4       1 / 1           19 / 22         \<nual\>                nual                      nual                 1
2       3       28      36      9       1 / 1           28 / 36         \<Berlinale\>           Berlinale                 Berlinale            1
3       4       65      66      2       2 / 2           28 / 29         an                      an                        biannual             2
4       5       67      70      4       2 / 2           30 / 33         nual                    nual                      biannual             2
5       6       72      80      9       2 / 2           35 / 43         \<Berlinale\>           Berlinale                 Berlinale            2
6       7       105     106     2       2 / 2           68 / 69         an                      an                        annual               2
7       8       107     110     4       2 / 2           70 / 73         nual                    nual                      annual               2
8       9       134     135     2       3 / 3           16 / 17         an                      an                        an                   3
9       10      140     141     2       3 / 3           22 / 23         an                      an                        and                  3
10      11      142     145     4       3 / 3           24 / 27         nual                    nual                      annual               3
11      12      148     149     2       3 / 3           30 / 31         an                      an                        annual               3
12      13      153     161     9       3 / 3           35 / 43         \<Berlinale\>           Berlinale                 Berlinale            3
```

11. `\\-` to shrink regions
12. `:call b:VM_Selection.Funcs.regions_contents()` outputs next. Notice how regions-contents of 1 or 2 chars long are no longer shrunk. "an" is not shrunk at all.

```
Index   ID      A       B       w       l / L           a / b            --- Pattern ---         --- Regions contents ---
0       1       15      16      2       1 / 1           15 / 16         an                      an
1       2       20      21      2       1 / 1           20 / 21         \<nual\>                ua
2       3       29      35      7       1 / 1           29 / 35         \<Berlinale\>           erlinal
3       4       65      66      2       2 / 2           28 / 29         an                      an
4       5       68      69      2       2 / 2           31 / 32         nual                    ua
5       6       73      79      7       2 / 2           36 / 42         \<Berlinale\>           erlinal
6       7       105     106     2       2 / 2           68 / 69         an                      an
7       8       108     109     2       2 / 2           71 / 72         nual                    ua
8       9       134     135     2       3 / 3           16 / 17         an                      an
9       10      140     141     2       3 / 3           22 / 23         an                      an
10      11      143     144     2       3 / 3           25 / 26         nual                    ua
11      12      148     149     2       3 / 3           30 / 31         an                      an
12      13      154     160     7       3 / 3           36 / 42         \<Berlinale\>           erlinal
```

13. `\\-` to shrink regions
14. `:call b:VM_Selection.Funcs.regions_contents()` outputs

```
Index   ID      A       B       w       l / L           a / b            --- Pattern ---         --- Regions contents ---
0       1       15      16      2       1 / 1           15 / 16         an                      an
1       2       20      21      2       1 / 1           20 / 21         \<nual\>                ua
2       3       30      34      5       1 / 1           30 / 34         \<Berlinale\>           rlina
3       4       65      66      2       2 / 2           28 / 29         an                      an
4       5       68      69      2       2 / 2           31 / 32         nual                    ua
5       6       74      78      5       2 / 2           37 / 41         \<Berlinale\>           rlina
6       7       105     106     2       2 / 2           68 / 69         an                      an
7       8       108     109     2       2 / 2           71 / 72         nual                    ua
8       9       134     135     2       3 / 3           16 / 17         an                      an
9       10      140     141     2       3 / 3           22 / 23         an                      an
10      11      143     144     2       3 / 3           25 / 26         nual                    ua
11      12      148     149     2       3 / 3           30 / 31         an                      an
12      13      155     159     5       3 / 3           37 / 41         \<Berlinale\>           rlina
```

15. `\\-` to shrink regions
16. `:call b:VM_Selection.Funcs.regions_contents()` outputs

```
Index   ID      A       B       w       l / L           a / b            --- Pattern ---         --- Regions contents ---
0       1       15      16      2       1 / 1           15 / 16         an                      an
1       2       20      21      2       1 / 1           20 / 21         \<nual\>                ua
2       3       31      33      3       1 / 1           31 / 33         \<Berlinale\>           lin
3       4       65      66      2       2 / 2           28 / 29         an                      an
4       5       68      69      2       2 / 2           31 / 32         nual                    ua
5       6       75      77      3       2 / 2           38 / 40         \<Berlinale\>           lin
6       7       105     106     2       2 / 2           68 / 69         an                      an
7       8       108     109     2       2 / 2           71 / 72         nual                    ua
8       9       134     135     2       3 / 3           16 / 17         an                      an
9       10      140     141     2       3 / 3           22 / 23         an                      an
10      11      143     144     2       3 / 3           25 / 26         nual                    ua
11      12      148     149     2       3 / 3           30 / 31         an                      an
12      13      156     158     3       3 / 3           38 / 40         \<Berlinale\>           lin
```

17. `\\-` to shrink regions
18. `:call b:VM_Selection.Funcs.regions_contents()` outputs. Notice how regions-contents of even chars are shrunk at most to a 2 chars-string (like "an" not shrunk at all or "nual" shrunk to "ua") while those with odd chars are shrunk to 1 char (like "Berlinale" shrunk to "i").

```
Index   ID      A       B       w       l / L           a / b            --- Pattern ---         --- Regions contents ---
0       1       15      16      2       1 / 1           15 / 16         an                      an
1       2       20      21      2       1 / 1           20 / 21         \<nual\>                ua
2       3       32      32      1       1 / 1           32 / 32         \<Berlinale\>           i
3       4       65      66      2       2 / 2           28 / 29         an                      an
4       5       68      69      2       2 / 2           31 / 32         nual                    ua
5       6       76      76      1       2 / 2           39 / 39         \<Berlinale\>           i
6       7       105     106     2       2 / 2           68 / 69         an                      an
7       8       108     109     2       2 / 2           71 / 72         nual                    ua
8       9       134     135     2       3 / 3           16 / 17         an                      an
9       10      140     141     2       3 / 3           22 / 23         an                      an
10      11      143     144     2       3 / 3           25 / 26         nual                    ua
11      12      148     149     2       3 / 3           30 / 31         an                      an
12      13      157     157     1       3 / 3           39 / 39         \<Berlinale\>           i
```

19. `\\CU` to convert to uppercase
20. `Esc` to exit multi-cursor mode
