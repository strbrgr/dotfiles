return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        -- Removes inline hints as they don't support line-breaks. Use leader-"ee" instead
        virtual_text = false,
      },
      ---@type lspconfig.options
      servers = {
        tailwindcss = {
          root_dir = function(...)
            return require("lspconfig.util").root_pattern(".git")(...)
          end,
        },
      },
      setup = {},
    },
  },
}

