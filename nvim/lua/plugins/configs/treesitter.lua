require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "vim", "lua", "vimdoc",
    "html", "css", "go", "javascript", "typescript", "python", "java"
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
  },
}
