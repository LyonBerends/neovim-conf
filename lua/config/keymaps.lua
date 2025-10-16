-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<C-b>", function()
  require("snacks").bufdelete()
end, { desc = "Delete Buffer" })

vim.keymap.set({ "n", "t" }, "<C-/>", function()
  require("snacks").terminal()
end, { desc = "Terminal (cwd)" })
