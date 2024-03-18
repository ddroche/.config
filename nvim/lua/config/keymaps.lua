-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- Center screen when paging
map("n", "L", "Lzz")
map("n", "H", "Hzz")
map("n", "<c-d>", "<c-d>zz")
map("n", "<c-u>", "<c-u>zz")
