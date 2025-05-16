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

## License

<!-- doc-gen FILE src=LICENSE/LICENSE.md -->
This content will be replaced by the local script content.
<!-- end-doc-gen -->
