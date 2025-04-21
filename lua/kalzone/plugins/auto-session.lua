return {
  "rmagatti/auto-session",
  lazy = false,
  keys = {
    { "<leader>fs", "<cmd>SessionSearch<CR>", desc = "Find sessions" },
  },
  opts = {
    suppressed_dirs = { "~/", "/" },
  }
}
