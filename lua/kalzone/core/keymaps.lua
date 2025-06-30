vim.g.mapleader = " "

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlight" })

-- buffer management
keymap.set("n", "<Tab>", "<cmd>bnext<CR>", { desc = "Go to next buffer" })
keymap.set("n", "<S-Tab>", "<cmd>bprev<CR>", { desc = "Go to previous buffer" })
keymap.set("n", "<leader>x", "<cmd>bd<CR>", { desc = "Close current buffer" })
keymap.set("n", "<leader>z", "<cmd>bufdo bd<CR>", { desc = "Close all buffers" })

-- window management
keymap.set("n", "<leader>sv", "<c-w>v", { desc = "split window vertically" })
keymap.set("n", "<leader>sh", "<c-w>s", { desc = "split window horizontally" })
keymap.set("n", "<leader>se", "<c-w>=", { desc = "make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<cr>", { desc = "close current split" })

-- vertical motions
keymap.set('n', '<C-d>', '<C-d>zz', opts)
keymap.set('n', '<C-u>', '<C-u>zz', opts)

-- window motions
keymap.set('n', '<C-h>', '<C-w>h', opts)
keymap.set('n', '<C-j>', '<C-w>j', opts)
keymap.set('n', '<C-k>', '<C-w>k', opts)
keymap.set('n', '<C-l>', '<C-w>l', opts)

-- block hole register
vim.keymap.set("n", "<leader>c", [["_c]], opts)
vim.keymap.set("v", "<leader>c", [["_c]], opts)
vim.keymap.set("n", "<leader>d", [["_d]], opts)
vim.keymap.set("v", "<leader>d", [["_d]], opts)

keymap.set('n', '<leader>tl', '', {
  noremap = true,
  callback = function()
    if vim.wo.relativenumber then
      vim.wo.relativenumber = false
      vim.wo.number = true
    else
      vim.wo.relativenumber = true
    end
  end
})

