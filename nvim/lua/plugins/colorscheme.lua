return {

  -- disable tokyonight
  { "folke/tokyonight.nvim", enabled = true },
  -- enable catppuccin
  { "catppuccin/nvim", name = "catppuccin", enabled = false },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
