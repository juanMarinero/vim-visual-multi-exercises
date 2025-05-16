1. Cursor on line 1 letter "a" of "apple"
2. `Ctrl-Down` to adds cursor in same column of line 2 ("b" of "banana")
3. `Ctrl-Down` to adds cursor in same column of line 3 ("c" of "cherry"). Note that steps 2 and 3 can be combined using counts, like `2Ctrl-Down`.

`q` to skip cursor-region and go to next region

4. `Tab` to switch to "extend mode"
5. `Up-arrow` to move to the "banana" line
6.  `q` to remove that region but also jump to next region, i.e. if we are in `b` (of banana) we jump to next line that has a `b`.

Now edit the remaining cursors (and the new one added region by `q`):

7. `e` go to end of word
8. `a_end` to add `_end` at end of those words
