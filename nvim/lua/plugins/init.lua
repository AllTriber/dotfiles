return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require "plugins.configs.treesitter"
    end,
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "go",
        "javascript",
        "typescript",
        "python",
        "java",
      },
    },
  },

  {
    "github/copilot.vim",
    event = "InsertEnter",
    config = function()
      vim.g.copilot_no_tab_map = false
      vim.api.nvim_set_keymap("i", "<C-A>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
    end,
  },

  -- DAP Plugin for Debugging
  {
    "mfussenegger/nvim-dap",
    config = function()
      require "plugins.configs.dap"
      require "plugins.configs.dap.go"
    end,
  },

  -- Optional UI for DAP
  {
    "rcarriga/nvim-dap-ui",
    config = function()
      require("dapui").setup()
    end,
  },

  -- Optional virtual text for inline debugging information
  {
    "theHamsta/nvim-dap-virtual-text",
    config = function()
      require("nvim-dap-virtual-text").setup()
    end,
  },
  --
  -- Gitsigns configuration
  {
    "lewis6991/gitsigns.nvim",
    requires = { "nvim-lua/plenary.nvim" },
    config = function()
      require("plugins.configs.gitsigns").setup()
    end,
  },

  -- Fugitive setup with lazy loading
  {
    "tpope/vim-fugitive",
    cmd = { "Git", "Gread", "Gwrite", "Gdiffsplit", "Gblame", "Gstatus", "Gcommit" }, -- Load on these commands
    config = function()
      -- Optional: any extra configuration for fugitive
    end,
  },
}
