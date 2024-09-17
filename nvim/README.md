# Dotfiles Repository

Welcome to my dotfiles repository! This repository currently contains my custom configuration for **Neovim**, with plans to include more configurations in the future.

## Neovim Configuration

The Neovim configuration leverages [NvChad](https://github.com/NvChad/NvChad) as a base and adds additional plugins and settings tailored to my workflow. Below is an overview of the key components and how to set it up.

### Key Files

- **`init.lua`**: Bootstraps `lazy.nvim` for plugin management, sets up NvChad, and loads all configurations.
- **`lua/options.lua`**: Contains the Neovim options. It uses NvChad’s default options, with space for additional custom options.
- **`lua/chadrc.lua`**: This file is used to set themes and override highlights. The current theme is set to "vscode_dark".
- **`lua/mappings.lua`**: Defines key mappings, including buffer navigation, debugging, and Copilot enable/disable commands.
- **`lua/plugins/init.lua`**: Contains the list of plugins, including:
  - **DAP** (Debug Adapter Protocol) for debugging Go and other languages.
  - **Treesitter** for syntax highlighting and improved editing experience.
  - **Copilot** integration for AI-based code completion.
  - **Fugitive** for Git integration.

### Plugin Overview

- **Lazy.nvim**: Manages plugins lazily.
- **NvChad**: Base configuration for Neovim.
- **DAP**: Debugging support for various languages, especially Go.
- **Treesitter**: Syntax highlighting and code navigation.
- **Copilot**: AI-assisted code suggestions.
- **Fugitive**: Git integration for Neovim.

### Key Features

1. **Custom Key Mappings**:
   - Buffer navigation: `Shift + l` to move to the next buffer, `Shift + h` for the previous buffer.
   - Debugging controls: 
     - `F5` to continue debugging,
     - `F10` to step over,
     - `F11` to step into,
     - `F12` to step out.
   - DAP UI toggling with `<leader>du`.
   - Copilot toggling: `<leader>ce` to enable, `<leader>cd` to disable.
   
2. **Plugin Setup**:
   - The `init.lua` file ensures that all plugins are lazily loaded using `lazy.nvim`, and it bootstraps the entire plugin setup.
   - `dap`, `dapui`, and `dap-virtual-text` are configured for debugging Go applications with a smooth user experience.

3. **LSP Configuration**:
   - Language Server Protocol (LSP) setup for Go, HTML, CSS, and JavaScript/TypeScript with default capabilities.
   - Automatically organizes imports and formats Go code on save.

4. **Formatting**:
   - Integrated formatting using `conform.nvim` with format-on-save enabled for languages like Lua, HTML, and CSS.

### Getting Started

To set up this Neovim configuration, follow these steps:

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/your-repo/dotfiles.git ~/.config/nvim
   ```

2. **Install Neovim** (if not installed already).

3. **Launch Neovim**:
   Run `nvim` to automatically install `lazy.nvim` and all the plugins specified in `init.lua`.

4. **Configure Themes and Options**:
   - Customize the theme and options in `lua/chadrc.lua` and `lua/options.lua`.

5. **Key Mappings**:
   - Review or modify the key mappings in `lua/mappings.lua` according to your preferences.

### Future Plans

- Add configuration for other tools like `tmux`, `zsh`, etc.
- Further customization and fine-tuning of Neovim for better performance and usability.

Feel free to explore the repository, contribute, or suggest improvements!

## License

This project is licensed under the MIT License.

---

Enjoy your customized Neovim experience!
