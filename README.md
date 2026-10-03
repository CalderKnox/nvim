# 💤 LazyVim

> A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).

## Overview

Neovim configuration based on LazyVim with catppuccin, blink.cmp, Snacks picker,
and language extras for TypeScript (biome), Python (pyrefly), Rust, Go, and more.

## Installation

1. **Backup existing config** (optional but recommended):

```bash
mv ~/.config/nvim ~/.config/nvim.bak
```

2. **Clone this repository**:

```bash
git clone https://github.com/azwpayne/nvim.git ~/.config/nvim
```

3. **Start Neovim**:
   The first launch will automatically install plugins and set up the configuration.
   After pulling config changes, run `:Lazy sync` (and `:Lazy clean` if plugins were removed).

## Features

### Core

- **lazy.nvim** — plugin manager
- **LazyVim** — batteries-included Neovim distribution
- **catppuccin** — colorscheme
- **blink.cmp** — completion (LazyVim default)
- **Snacks picker** — fuzzy finder (LazyVim default; replaces Telescope)
- **Treesitter** — syntax highlighting
- **mason.nvim** — LSP/tool installer (also ensures stylua, shellcheck, shfmt)
- **which-key** — keybinding popup helper
- **lualine** — status line

### Language extras (`lazyvim.json`)

typescript (+ biome), json, python (pyrefly), rust, go, cmake, docker, yaml, markdown

### Custom keymaps

| Keymap | Description        |
| ------ | ------------------ |
| `jk`   | Exit insert mode   |

LazyVim defaults (buffer, file, search, UI, etc.) are unchanged.

### Local deltas (`lua/config/options.lua`)

- `scrolloff = 8`
- `colorcolumn = "120"`
- `showmatch = true`
- `vim.g.lazyvim_python_lsp = "pyrefly"`
- `vim.g.lazyvim_prettier_needs_config = true` (prefer biome when no prettier config)
- Tabs/indent default to LazyVim (2 spaces); Python files use 4 via autocmd

### Customization

- Plugins: add specs under `lua/plugins/` (see `colorscheme.lua`, `mason.lua`)
- Options: `lua/config/options.lua`
- Keymaps: `lua/config/keymaps.lua`
- Autocmds: `lua/config/autocmds.lua`

## License

MIT - See the [LICENSE](LICENSE) file for details.
