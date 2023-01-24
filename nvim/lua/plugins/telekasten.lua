return {
  {
    "renerocksai/telekasten.nvim",
    config = function()
      require("telekasten").setup({
        media_previewer = "viu-previewer",
      })
    end,
  },
}
