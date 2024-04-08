return {
  {
    'wuelnerdotexe/vim-astro',
    lazy = true,
    config = function()
      vim.g.astro_typescrypt = 'enable'
      vim.g.astro_stylus = 'disable'
    end,
    ft = { 'astro' },
  },
}
