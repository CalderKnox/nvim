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

### Sync / clean

After pulling config or changing `lazyvim.json` extras:

1. `:Lazy sync` — install/update plugins and refresh `lazy-lock.json`.
2. `:Lazy clean` — remove plugins no longer in the spec (safe after sync; confirms before delete).
3. Restart Neovim (or `:Lazy reload` where appropriate) so new extras load.

Optional headless sync (non-interactive install/update only; still run `:Lazy clean` in a UI session if orphans remain):

```bash
nvim --headless "+Lazy! sync" +qa
```

### Auth prerequisites

- **Octo / `gh`**: run `gh auth login` (and ensure `gh` is on `PATH`) before `:Octo …`.
- **Sidekick (CLI-only)**: extra `ai.sidekick` with `nes.enabled = false` (no Copilot LSP / no `:LspCopilotSignIn`). Install and log into CLI tools you use (claude / codex / cursor / opencode); then `<leader>aa` toggle, `<leader>as` select/attach.

## Features

### Core

- **lazy.nvim** — plugin manager
- **LazyVim** — batteries-included Neovim distribution
- **catppuccin** — colorscheme
- **blink.cmp** — completion (LazyVim default)
- **Snacks picker** — fuzzy finder (LazyVim default; replaces Telescope)
- **Treesitter** — syntax highlighting
- **mason.nvim** — LSP/tool installer (core ensures stylua/shfmt; util.dot adds shellcheck)
- **which-key** — keybinding popup helper
- **lualine** — status line

### Language extras (`lazyvim.json`)

typescript (+ biome), json, python (pyrefly), rust, go, cmake, docker, yaml, markdown, toml (taplo)

### Other extras (`lazyvim.json`)

- **dap.core** / **dap.nlua** — debugging
- **test.core** — neotest
- **util.dot** — dotfiles / shell (bashls, shellcheck)
- **util.octo** — GitHub issues/PRs in Neovim (pulls in `lang.git`)
- **ai.sidekick** — AI CLI bridge only (`nes.enabled = false` in `lua/plugins/sidekick.lua`); no Copilot / no `ai.copilot` / no `ai.copilot-native`
- **coding.yanky** — better yank/paste ring
- **coding.mini-surround** — surround text objects
- **editor.inc-rename** — incremental LSP rename UI
- **editor.refactoring** — extract/inline refactorings (`<leader>r…`; needs Neovim ≥ 0.12)
- **ui.treesitter-context** — sticky Treesitter context (current scope at top of window)

### Optional backlog (not enabled)

- **editor.harpoon2** — mark/jump file list (enable if you live in a small hot-file set)
- **editor.overseer** — task runner UI (enable if you drive builds/tests from Neovim often)
- **lang.tailwind** — Tailwind LSP/class tools (enable only for heavy Tailwind projects)

### Verification checklist

After `:Lazy sync`, smoke-test:

| Extra / area | Quick check |
| ------------ | ----------- |
| **dap.core** / **dap.nlua** | Open Lua/Python/Go; `:DapToggleBreakpoint`, step once |
| **test.core** | In a test file, neotest run nearest (default LazyVim test keys) |
| **util.dot** | Open a shell script; bashls / shellcheck diagnostics appear |
| **coding.yanky** | Yank twice, cycle paste ring |
| **coding.mini-surround** | Surround a word (`gs` / LazyVim surround keys) |
| **editor.inc-rename** | LSP rename shows incremental UI |
| **editor.refactoring** | `<leader>rs` opens refactor select (Neovim ≥ 0.12) |
| **ui.treesitter-context** | Nested function/class: sticky context line at window top |
| **lang.toml** | Open `Cargo.toml` / `pyproject.toml`; taplo attached |
| **util.octo** | `:Octo` works after `gh auth login` |
| **ai.sidekick** | `<leader>aa` toggles CLI; `<leader>as` selects claude/codex/cursor/opencode; no Copilot sign-in |

### Custom keymaps

| Keymap | Description        |
| ------ | ------------------ |
| `jk`   | Exit insert mode   |

LazyVim defaults (buffer, file, search, UI, etc.) are unchanged.

### Local deltas (`lua/config/options.lua`)

- `scrolloff = 8`
- `colorcolumn = "120"`
- `showmatch = true`
- `modeline = false` (security)
- `vim.g.lazyvim_python_lsp = "pyrefly"`
- Tabs/indent default to LazyVim (2 spaces)

### Customization

- Plugins: add specs under `lua/plugins/` (see `colorscheme.lua`, `mason.lua`)
- Options: `lua/config/options.lua`
- Keymaps: `lua/config/keymaps.lua`
- Autocmds: `lua/config/autocmds.lua`

## License

Apache-2.0 - See the [LICENSE](LICENSE) file for details.
