return {

  -- disable tokyonight
  { "folke/tokyonight.nvim", enabled = false },
  -- enable catppuccin
  { "catppuccin/nvim", name = "catppuccin", enabled = true },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
