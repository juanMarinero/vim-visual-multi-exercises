**Exercises** to learn [vim-visual-multi](https://github.com/mg979/vim-visual-multi).

A complement to the official [tutorial](https://github.com/mg979/vim-visual-multi#tutorial).

**How to use**

0. Read [doc/visual-multi.txt](https://github.com/mg979/vim-visual-multi/blob/master/doc/visual-multi.txt) and practice with [doc/vm-tutorial](https://github.com/mg979/vim-visual-multi/blob/master/doc/vm-tutorial).
1. Read the [`C-Down`/`C-Up` to add cursors vertically](#c-down%2Fc-up-to-add-cursors-vertically) exercise to get familiar with VM (short for [vim-visual-multi](https://github.com/mg979/vim-visual-multi)). This is the most beginners-focused exercise and has screenshots.
2. [Learning by Doing](https://en.wikipedia.org/wiki/Learning-by-doing). Go to an [exercise](#exercises) and try to solve it:
- Make the left window buffer become identical to the right one applying VM commands: `cd <this_repo>/exercises/<exercise_name> && vim -d start.txt result.txt` or directly copy-paste the command of *Start vs result* section of the desired exercise.
- To display the solution click on `▸ Solution` or use `:split steps.md`.
3. To solve the exercises more programmatly read the [Transpose programmatly](#transpose-programmatly) exercise as example.
4. All collaboration is appreciated: [contribute](#contribute).

<a id="avoid_VM_wiki"></a>**Avoid VM wiki, embrace `:help vm-`**

Use `:help vm-quick-reference` or alike to read the up-to-date VM own documentation. The [wiki](https://github.com/mg979/vim-visual-multi/wiki) will be kept for screenshots but consider it outdated for everything else.

**leader- vs \\\\**

`leader-` is your `g:VM_leader` (default `\\`)
- In section's headers it appears as `leader-` instead of `\\` because one might not use the default `g:VM_leader`.
- But the other way around in solutions to make it easier to understand (and apply) for Vim-beginners. Also to not confuse with Vim-mapleader (see `:help mapleader`).


**Advance**

* [Special commands](#special-commands)
  * [Tools menu](#tools-menu)
  * [`<C-V>` for pasting the unnamed VM register](#<c-v>-for-pasting-the-unnamed-vm-register)
* [Mappings](#mappings)
  * [Default mappings](#default-mappings)
  * [Overwrite mappings](#overwrite-mappings)

**Collaboration, ToDo-s & FAQs**

* [Contribute](#contribute)
* [FAQs](#faqs)
  * [VM FAQs](#vm-faqs)
  * [Vanilla markdown is not enough? Why is NodeJS needed?](#vanilla-markdown-is-not-enough%3F-why-is-nodejs-needed%3F)
  * [Why is needed to display content of files instead of writting them directly on `README.md`?](#why-is-needed-to-display-content-of-files-instead-of-writting-them-directly-on-readme.md%3F)
  * [Why does Markdown Magic process `README_magic.md` instead of `README.md`?](#why-does-markdown-magic-process-readme_magic.md-instead-of-readme.md%3F)
  * [Troubleshooting](#troubleshooting)


## Special commands

### Tools menu

Do **not** confuse with `\\l` described in `:help vm-infoline`.

`:help vm-mappings-buffer` says

```
Tools Menu  \\`  filter lines to buffer, etc
```

Alternative to <code>\\\\\`</code> we can run `:call vm#special#commands#menu()`, defined in [autoload/vm/special/commands.vim](https://github.com/mg979/vim-visual-multi/blob/master/autoload/vm/special/commands.vim). This prompts the user with a menu of commands:

```
"    - Show VM registers
i    - Show regions info
f    - Filter regions by pattern or expression
l    - Filter lines with regions
r    - Regions contents to buffer
q    - Fill quickfix with regions lines
Q    - Fill quickfix with regions positions and contents
```

We can also directly access each one with its respective command. For example to show regions info we can directly run `:call b:VM_Selection.Funcs.regions_contents()`, see practical use in [`leader-minus`/`leader-plus` to shrink/enlarge regions](#leader-minus%2Fleader-plus-to-shrink%2Fenlarge-regions).

Read also `:help vm-ex-commands`.


### `<C-v>` for pasting the unnamed VM register

Read [doc/vm-tutorial](https://github.com/mg979/vim-visual-multi/blob/master/doc/vm-tutorial): `vim <path>/vim-visual-multi/doc/vm-tutorial -c '/Some experiments \~'`. Extract:

```
About <C-v> in insert mode: it's a special VM command that will paste the content of
the unnamed VM register, if this has been filled with something.
If you pressed <C-r>{register}, this would still work, but the pasted content would
be the same for all cursors, since it would use vim (and not VM) registers.
```


## Mappings

### Default mappings

Read `:help vm-mappings-default`.

To see them run `:echo g:Vm`.
Let's make it more human-readable. Write that vim-variable in a file:

```sh
vim -c 'redir > Vm_content.txt | echo g:Vm | redir END | quit'
```

Then replace `\\` with for example a `&`  so `json.dump` can handle it.
Finally we can revert that, replacing `&&` with `leader-` (because [jq](https://github.com/jqlang/jq) cannot handle `\\`):

```sh
cat Vm_content.txt \
  | sed 's/\\/\&/g' \
  | python3 -c 'import sys, ast, json; print(json.dumps(ast.literal_eval(sys.stdin.read())))' \
  | sed 's/&&/leader-/g' \
  | jq . --indent 2 > Vm_content.json \
  && cat Vm_content.json
```

Final JSON where each `leader-` should be `\\`:

<!-- doc-gen CODE src=aux/DefaultMappings.json -->
This content will be replaced by the local JSON script content.
<!-- end-doc-gen -->


### Overwrite mappings

`:help vm-mappings-all`. Also read `:h vm-faq-mappings` and related Vim-tags sections in [doc/vm-faq.txt](https://github.com/mg979/vim-visual-multi/blob/master/doc/vm-faq.txt).

For [kitty](https://github.com/kovidgoyal/kitty) terminal the `C-Down`/`C-Up` mappings might not work. Overwrite them like in `./mappings/kitty-terminal.vim`

<!-- doc-gen CODE src=mappings/kitty-terminal.vim -->
This content will be replaced by the local vim script content.
<!-- end-doc-gen -->


## Contribute

1. Clone this repo

```sh
git clone https://github.com/juanMarinero/vim-visual-multi-exercises
cd vim-visual-multi-exercises
```

2. Install the Node.js [modules](./requirements.txt)

```sh
nvm install  # Installs version from .nvmrc"
nvm use      # Auto-switches to version from .nvmrc"
npm install
```

3. Edit `README_magic.md`. For example add [local content](./aux/new-section-template.md) or [remote content](./aux/new-section-template_remote.md)

4. Run the [markdown-magic](https://github.com/mg979/markdown-magic) - [script](./run-magic.js) and check the result

```sh
node run-magic.js \
  && vim README.md
```

Tip: preview directly with [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)

```sh
node run-magic.js \
  && vim README.md -c "MarkdownPreviewToggle"
```


## FAQs


### VM FAQs

Run `:help vm-faqs` or open [doc/vm-faq.txt](https://github.com/mg979/vim-visual-multi/blob/master/doc/vm-faq.txt).


### Vanilla markdown is not enough? Why is NodeJS needed?

Markdowns can**not** show scripts (nor remote nor local). 
[markdown-magic](https://github.com/mg979/markdown-magic) comes to rescue, but it must be installed in a Node.js environment.

*Q*: And why not directly on a HTML script?

*A*: I believe markdowns are easier for humans to read and edit, making them better suited for collaboration. While HTML scripts with Node.js offer many features that Markdown lacks, I don't need [most of] those advanced capabilities. For this project Node.js should be limited to using [markdown-magic](https://github.com/mg979/markdown-magic), and perhaps a few additional modules in the future.


### Why is needed to display content of files instead of writting them directly on `README.md`?

- For easier **version control**. See [contribute](#contribute) section.
- To enable [vimdiff](https://vimdoc.sourceforge.net/htmldoc/diff.html), [git diff](https://git-scm.com/docs/git-diff), [delta](https://github.com/dandavison/delta),... or (Neo)Vimdiff plugins like [diffchar](https://github.com/rickhowe/diffchar.vim) or [fugitive](https://github.com/tpope/vim-fugitive) on initial (`start.txt`) vs final (`result.txt`) code. See next screenshots of [delta example](#add-cursors-vertically-compare-results).
- [Learning by Doing](https://en.wikipedia.org/wiki/Learning-by-doing) feature. To challenge myself I can `vim -O start.txt result.txt`, once I think that I achieved to make `start.txt`script identical to `result.txt` (applying [vim-visual-multi](https://github.com/mg979/vim-visual-multi) commands), then I can check it with `:windo diffthis` (OFF with `:windo diffoff`).  To display the solution click on `▸ Solution` or use `:split steps.md`.


### Why does Markdown Magic process `README_magic.md` instead of `README.md`?

The [contribute](#contribute) section instructs you to run the following JavaScript-[script](./run-magic.js):
 
<!-- doc-gen CODE src=run-magic.js -->
This content will be replaced by the local script content.
<!-- end-doc-gen -->

Thus content of `README_magic.md` is processed by [markdown-magic](https://github.com/mg979/markdown-magic), which outputs the result to `README.md`.

Next **non-existing** `--output` flag could achieve the same effect, for example: `npx markdown-magic --output README.md -- README_magic.md`.

In summary, running `npx markdown-magic README.md` would overwrite `README.md` directly, making version control more difficult.


### Troubleshooting

- `:help vm-troubleshooting`
- [VM-issues](https://github.com/mg979/vim-visual-multi/issues)


## License

<!-- doc-gen FILE src=LICENSE/LICENSE.md -->
This content will be replaced by the local script content.
<!-- end-doc-gen -->
