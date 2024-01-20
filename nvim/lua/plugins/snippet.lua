return {
  {
    "rafamadriz/friendly-snippets",
    enabled = false,
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
    end,
  },
}
