return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  config = function()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({ -- enable syntax highlighting
      highlight = {
        enable = true,
      },
      indent = { 
        enable = true,
      },
      auto_install = false,
      ensure_installed = {
        "python",
        "go",
        "lua",
        "dart",
        "javascript",
        "typescript",
        "tsx",
        "html",
        "htmldjango",
        "css",
        "json",
        "yaml",
        "markdown",
        "markdown_inline",
        "bash",
        "vim",
        "dockerfile",
        "gitignore",
        "query",
        "vimdoc",
        "gdscript",
        "godot_resource",
        "gdshader",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end,
}
