return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    lualine.setup({
      options = {
        theme = "catppuccin",
        component_separators = "|",
        section_separators = "",
      },
      sections = {
        lualine_a = {
          {
            "buffers",
            symbols = {
              alternate_file = "",
            }
          }
        },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {
          {
            "filename",
            path = 1,
          },
        },
        lualine_y = {},
        lualine_z = {},
      },
    })
  end,
}
