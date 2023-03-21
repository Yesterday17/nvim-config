# Yesterday17's neovim configuration

## Features

- Using solarized theme (`maxmx03/solarized.nvim`)
- Transparent background
- Neo-tree no longer hides dot files and git-ignored files
- Mapped `<ScrollWheelRight>` action to `<nop>`
- Set `vim.o.timeoutlen` to `0` for quicker response of `which-key`
- Set gui font to `JetBrains Mono`
- Disabled cursor animation in neovide
- Remember window size and position in neovide

## Installation

### Dependencies

```bash
# If you want to do something frontend
npm i -g eslint_d @fsouza/prettierd
```

### Clone AstroNvim

```bash
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
```

### Clone this config

```bash
git clone https://github.com/Yesterday17/nvim-config ~/.config/nvim/lua/user
```

### Start Neovim

The `--multigrid` argument is necessary if you want transparent background.

```bash
neovide --multigrid
```

### Highlights

```bash
:TSInstall typescript
```

### Language Servers

```bash
:LspInstall typescript
```
