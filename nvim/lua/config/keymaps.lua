-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>md", ":MarkdownPreview<CR>")

-- Obsidian Keymaps
vim.keymap.set("n", "<leader>ot", ":ObsidianToday<CR>")
vim.keymap.set("n", "<leader>oy", ":ObsidianYesterday<CR>")
vim.keymap.set("n", "<leader>of", ":ObsidianFollowLinkCR>")
vim.keymap.set("n", "<leader>os", ":ObsidianSearch<CR>")
vim.keymap.set("n", "<leader>oo", ":ObsidianOpen<CR>")
vim.keymap.set("n", "<leader>ob", ":ObsidianBacklinks<CR>")
vim.keymap.set("n", "<leader>on", ":ObsidianNew<CR>")
vim.keymap.set("n", "<leader>om", ":ObsidianLink<CR>")
vim.keymap.set("n", "<leader>ol", ":ObsidianLinkNew<CR>")

-- Tabs Keymaps
vim.keymap.set("n", "<leader><tab>n", "<cmd>tabnext<cr>", { desc = "Next Tab" })
vim.keymap.set("n", "<leader><tab>p", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })
