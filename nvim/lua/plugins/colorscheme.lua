return {

  -- enable tokyonight
  { "folke/tokyonight.nvim", enabled = true },
  -- disable catppuccin
  { "catppuccin/nvim", name = "catppuccin", enabled = false },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
