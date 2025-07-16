# 💤 Shloka's Neovim Config

A blazing-fast ⚡ and feature-rich Neovim setup built for C++ development.  
Modern plugins, clean UI, powerful shortcuts — better than VSCode, no bloat.

---

## 🚀 Features

- 🌈 **Catppuccin** theme with beautiful UI
- 💻 Full **LSP** support with `clangd`
- 🤖 **Autocomplete** with `nvim-cmp`, `luasnip`, and `codeium`
- 🧠 AI-powered completions with **Codeium**
- 🐛 **Debugger** with `nvim-dap` + `dap-ui` + `lldb` integration
- 🔍 Fast file/project search with **Telescope**
- 🧭 File explorer with **Neo-tree**
- 🧰 Floating terminal with **ToggleTerm**
- 🧼 Autoformat on save with **conform.nvim**
- 📌 Quick file marking with **Harpoon**
- 🔧 Modular and lazy-loaded using **lazy.nvim**
- 🎯 Relative + absolute line numbers, cursor line, nice UX

---

## 📦 Plugin Stack

| Category       | Plugins Used |
|----------------|--------------|
| LSP            | `nvim-lspconfig`, `mason.nvim`, `mason-lspconfig.nvim` |
| Completion     | `nvim-cmp`, `cmp-nvim-lsp`, `cmp-buffer`, `cmp-path`, `luasnip`, `codeium.nvim` |
| Debugger       | `nvim-dap`, `nvim-dap-ui`, `nvim-nio` |
| UI / UX        | `catppuccin`, `which-key.nvim`, `nvim-web-devicons` |
| File Explorer  | `neo-tree.nvim` |
| Search         | `telescope.nvim`, `ripgrep` |
| Terminal       | `toggleterm.nvim` |
| Formatting     | `conform.nvim` |
| Navigation     | `harpoon` |

---

## 🎯 Keybindings

| Keybinding     | Action                         |
|----------------|--------------------------------|
| `<F5>`         | Compile & run current C++ file |
| `<leader>/`    | Toggle comment                 |
| `<leader>e`    | Toggle Neo-tree                |
| `<C-k>`        | Show all keymaps (Telescope)   |
| `:Dbg`         | Start C++ Debugging            |

---

## 🔨 Setup

### 🔗 Clone the config

```bash
git clone git@github.com:shloka2598/nvim ~/.config/nvim
```


📚 Recommended
  Font: FiraCode Nerd Font
  Terminal: iTerm2 (macOS) or Alacritty
  GUI Option: Neovide for sexy animations
  Tooling: Install ripgrep for Telescope live grep

🔒 License
MIT License.
Use it. Fork it. Improve it.
Just don’t ship it without flexing 😎.

🙏 Credits
Thanks to:
  folke/lazy.nvim
  neovim/nvim-lspconfig
  hrsh7th/nvim-cmp
  rcarriga/nvim-dap-ui
  catppuccin/nvim
