return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(
          opts.ensure_installed,
          { "typescript", "tsx", "html", "javascript", "json", "svelte", "css", "scss" }
        )
      end
    end,
  },
}