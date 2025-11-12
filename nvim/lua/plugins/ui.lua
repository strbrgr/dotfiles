return {
  -- {
  --   "ellisonleao/gruvbox.nvim",
  --   priority = 1000,
  --   config = function(_, opts)
  --     require("gruvbox").setup(opts)
  --     vim.cmd.colorscheme("gruvbox")
  --   end,
  --   opts = {
  --     contrast = "hard",
  --     transparent_mode = true,
  --   },
  -- },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "night",
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
}
