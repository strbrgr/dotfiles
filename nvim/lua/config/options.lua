-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--

-- Disable markdownlint MD026 rule
vim.g.markdownlint_config = {
  MD026 = false,
}
