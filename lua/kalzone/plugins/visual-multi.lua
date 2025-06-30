return {
  "mg979/vim-visual-multi",
  branch = "master",
  lazy = false,
  init = function()
    vim.g.VM_maps = {
      ["Add Cursor Down"] = "<C-j>",
      ["Add Cursor Up"] = "<C-k>",
    }
  end,
}

