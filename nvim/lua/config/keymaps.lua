-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
map("n", "<leader>ee", "<cmd>lua vim.diagnostic.open_float()<CR>")
-- map("n", "<leader>et", "<cmd>Telescope diagnostics<CR>")
-- map("n", "<leader>en", "<cmd>lua vim.diagnostic.goto_next()<CR>")
-- map("n", "<leader>ep", "<cmd>lua vim.diagnostic.goto_prev()<CR>")
