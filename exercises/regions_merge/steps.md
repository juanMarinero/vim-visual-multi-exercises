1. Cursor on any char of "an" of line 1
2. `C-n` to add cursor-word `\<an\>`
3. `\\w` to toggle whole word search. Pattern now is `an` without `\<` nor `\>`
4. `Right-arrow` to move to "n" of "nual" of line 1
5. `C-n` to add cursor-word `\<nual\>`
6. `\\w` to toggle whole word search. Pattern now is `nual` without `\<` nor `\>`
7. Press `n` till no more matches in those 3 lines
8. `:call b:VM_Selection.Funcs.regions_contents()` produces (adding fields "Whole-word" and "line")

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

9. `\\CP` to convert to PascalCase (all words capitalized without spaces)
10. `Esc` to exit multi-cursor mode

Result

```
Word cursors: An and Nual
Sentece with words: "The biAnNual Berlinale is awesome, thats a 2 nAnNual event"
Word cursors: "An" And "AnNual"
```

Now instead after step 7 we apply next

8. `\\m` to merge regions. Or run `:call b:VM_Selection.Global.merge_regions()`. Note this command could be called
9. `:call b:VM_Selection.Funcs.regions_contents()` produces (adding fields "Whole-word" and "line")

```
Index   ID      A       B       w       l / L           a / b            --- Pattern ---         --- Regions contents ---  --- Whole-word ---  --- line ---
0       11      15      16      2       1 / 1           15 / 16         an                      an                        an                   1
1       12      22      25      4       1 / 1           22 / 25         nual                    nual                      nual                 1
2       13      54      59      6       2 / 2           28 / 33         nual                    annual                    biannual             2
3       14      94      99      6       2 / 2           68 / 73         nual                    annual                    nannual              2
4       15      123     124     2       3 / 3           16 / 17         an                      an                        an                   3
5       16      127     128     2       3 / 3           20 / 21         an                      an                        and                  3
6       17      132     137     6       3 / 3           25 / 30         nual                    annual                    annual               3
```

10. `\\CP` to convert to PascalCase (all words capitalized without spaces)
11. `Esc` to exit multi-cursor mode
