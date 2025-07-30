return {
  'nvim-treesitter/nvim-treesitter-context',
  config = function()
    require('treesitter-context').setup {
      enabled = true,
      multiwindow = true,
    }
  end,
}
