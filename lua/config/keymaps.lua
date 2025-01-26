-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

-- For some reason line diagnostics keymap wasn't showing up in a typescript file when pressing this keyybinding after updating lazyvim version
-- even though it is in the default keymap https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
map("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Line Diagnostics" })
