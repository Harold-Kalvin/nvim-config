return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    indent = {
      animate = {
        enabled = false,
      },
    },
    notifier = {},
    input = {},
    picker = {
      sources = {
        explorer = {
          layout = { layout = { position = "right" } },
        }
      }
    },
    explorer = {},
  },
  keys = {
    -- picker
    { "<leader>ff", function() Snacks.picker.files() end, desc = "Find Files" },
    { "<leader>fb", function() Snacks.picker.buffers() end, desc = "Buffers" },
    { "<leader>fn", function() Snacks.picker.notifications() end, desc = "Notification History" },
    { "<leader>fr", function() Snacks.picker.recent() end, desc = "Recent" },
    { "<leader>/", function() Snacks.picker.grep() end, desc = "Grep" },
    -- explorer
    { "<leader>ee", function() Snacks.explorer() end, desc = "File Explorer" },
    -- diagnostics
    { "<leader>fd", function() Snacks.picker.diagnostics() end, desc = "Diagnostics" },
    -- LSP
    { "gd", function() Snacks.picker.lsp_definitions() end, desc = "Goto Definition" },
    { "gD", function() Snacks.picker.lsp_declarations() end, desc = "Goto Declaration" },
    { "gr", function() Snacks.picker.lsp_references() end, nowait = true, desc = "References" },
    { "gI", function() Snacks.picker.lsp_implementations() end, desc = "Goto Implementation" },
    { "gy", function() Snacks.picker.lsp_type_definitions() end, desc = "Goto T[y]pe Definition" },
  }
}
