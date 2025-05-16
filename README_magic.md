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
