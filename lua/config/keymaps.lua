local icons = require("snacks.picker.source.icons")
-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<C-b>", function()
  require("snacks").bufdelete()
end, { desc = "Delete Buffer" })

vim.keymap.set({ "n", "t" }, "<C-/>", function()
  require("snacks").terminal()
end, { desc = "Terminal (cwd)" })

local neogen = require("neogen")
local function initialize_neogen()
  local opts = { noremap = true, silent = true }
  opts.desc = "Generates function doxygen"
  vim.keymap.set("n", "<space>cnf", function()
    neogen.generate({ type = "func" })
  end, opts)
  opts.desc = "Generates class doxygen"
  vim.keymap.set("n", "<space>cnc", function()
    neogen.generate({ type = "class" })
  end, opts)
  opts.desc = "Generates file doxygen"
  vim.keymap.set("n", "<space>cnF", function()
    neogen.generate({ type = "file" })
  end, opts)
end

initialize_neogen()
