require "nvchad.mappings"

local map = vim.keymap.set

local default_opts = { noremap = true, silent = true }

local function merge_opts(custom_opts)
  return vim.tbl_extend("force", default_opts, custom_opts or {})
end

---- Normal mode _________________________________________________________
map("n", ";", ":", merge_opts { desc = "CMD enter command mode" })

-- Navigate buffers
map("n", "<S-l>", ":bnext<CR>", merge_opts { desc = "Navigate buffer right" })
map("n", "<S-h>", ":bprevious<CR>", merge_opts { desc = "Navigate buffer left" })

-- Debugging key mappings for DAP with descriptions
map("n", "<F5>", ":lua require'dap'.continue()<CR>", merge_opts { desc = "Continue debugging" })
map("n", "<F10>", ":lua require'dap'.step_over()<CR>", merge_opts { desc = "Step over" })
map("n", "<F11>", ":lua require'dap'.step_into()<CR>", merge_opts { desc = "Step into" })
map("n", "<F12>", ":lua require'dap'.step_out()<CR>", merge_opts { desc = "Step out" })

-- Toggle breakpoint keybinding
map("n", "<leader>db", ":lua require'dap'.toggle_breakpoint()<CR>", merge_opts { desc = "Toggle breakpoint" })

-- Open DAP UI
map("n", "<leader>du", ":lua require'dapui'.toggle()<CR>", merge_opts { desc = "Toggle DAP UI" })

-- Copilot enable/disable mappings
map("n", "<leader>ce", ":Copilot enable<CR>", merge_opts { desc = "Enable Copilot" })
map("n", "<leader>cd", ":Copilot disable<CR>", merge_opts { desc = "Disable Copilot" })

-- Visual mode
map("v", "<", "<gv", merge_opts())
map("v", ">", ">gv", merge_opts())
map("v", "<A-j>", ":m '>+1<CR>gv=gv", merge_opts())
map("v", "<A-k>", ":m '<-2<CR>gv=gv", merge_opts())
map("v", "p", '"_dP', merge_opts())

-- Visual Block mode
map("x", "J", ":m '>+1<CR>gv=gv", merge_opts())
map("x", "K", ":m '<-2<CR>gv=gv", merge_opts())
map("x", "<A-j>", ":m '>+1<CR>gv=gv", merge_opts())
map("x", "<A-k>", ":m '<-2<CR>gv=gv", merge_opts())

-- vim-fugitive
map("n", "<leader>gs", ":Git<CR>", merge_opts { desc = "Open Git summary/status" })
map("n", "<leader>gb", ":Git blame<CR>", merge_opts { desc = "Blame current line" })
map("n", "<leader>gd", ":Gdiffsplit<CR>", merge_opts { desc = "Git diff split" })
map("n", "<leader>gw", ":Gwrite<CR>", merge_opts { desc = "Stage the current file" })
map("n", "<leader>gc", ":Git commit<CR>", merge_opts { desc = "Commit changes" })
map("n", "<leader>gp", ":Git push<CR>", merge_opts { desc = "Push changes to remote" })

-- Hop
map("n", "<leader>c", "<cmd>HopChar1<cr>", merge_opts { desc = "Hop to character (1)" })
map("n", "<leader>C", "<cmd>HopChar2<CR>", merge_opts { desc = "Hop to character (2)" })
map("n", "<leader>/", "<cmd>HopPattern<CR>", merge_opts { noremap = true, desc = "Hop to pattern" })
map("n", "<leader>l", "<cmd>HopLine<CR>", merge_opts { desc = "Hop to line" })
map("n", "<leader>w", "<cmd>HopWord<CR>", merge_opts { desc = "Hop to word" })
map("n", "<leader><leader>", "<cmd>HopWordCurrentLine<CR>", merge_opts { desc = "Hop to word in current line" })
map("v", "<leader>w", "<cmd>HopWord<CR>", merge_opts { desc = "Hop to word in visual mode" })
