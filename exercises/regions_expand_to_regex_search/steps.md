1. `gg` and `/age`
2. `C-n`
3. `\\A` to add all matches as VM-cursors. Vim cursor stays on 1st match (does not move)
4. `g/` and type `?,` as regex. So just those with unkown age will expand their region till the `?` char followed by a comma
5.  `q` to skip current VM-cursor (of first line), since it has a known age as `g/?` helps visually to find out, and jump to next match (to 2nd line)
9. `q` to skip this VM-cursor (known age)
6. `n` to go to next match (current has unknown age)
7. `n` to go to next match (current has unknown age)
8. `Q` to remove this VM-cursor (known age)
10. `\\CU` to change the case of remaining regions (the "age" field, the equal and its value) to uppercase. Or just `~` since selected chars are all undercase.
11. `Esc` to quit VM

Challenge.
After `/age`-`C-n` run `/best`-`C-n`, so `\\A` will match both regexes.
And `g/?,\|?$` will also expand those fields including their values if they are unkown (`?`).
Figure out how to set any of those two fields in uppercase if its respective value is known. `q`, `Q`, `n` and `N` are still valid to use.
Solution should be:

```
name=Sam, age=38, hobby=gardening, best_friend=Frodo
name=Frodo, age=50, hobby=reading, best_friend=Sam
name=Gandalf, AGE=55k??, hobby=smoking, BEST_FRIEND=__?
name=Legolas, AGE=3000?, hobby=wandering, best_friend=Gimli
name=Gimli, age=139, hobby=stonecraft, best_friend=Legolas
```
