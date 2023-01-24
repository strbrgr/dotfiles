return {
  {
    "epwalsh/obsidian.nvim",
    config = function()
      require("obsidian").setup({
        dir = "/Users/blitz/Documents/Obsidian Vault/",
        completion = { nvim_cmp = true },
      })
    end,
  },
}
