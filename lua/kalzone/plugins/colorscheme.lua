return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha",
      transparent_background = true, -- set terminal bg color to #1e1e2e
      blink_cmp = true,
    })
    vim.cmd.colorscheme("catppuccin")
  end,
}
