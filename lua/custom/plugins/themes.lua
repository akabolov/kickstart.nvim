return {
  'sainnhe/sonokai',
  'slugbyte/lackluster.nvim',
  {
    'rebelot/kanagawa.nvim',
    config = function()
      require('kanagawa').setup {
        overrides = function(colors)
          local palette = colors.palette
          return {
            -- columns
            SignColumn = { bg = 'NONE' },
            SignColumnSB = { bg = 'NONE' },
            LineNr = { bg = 'NONE' },

            -- diagnostic signs (bg cleared)
            DiagnosticSignError = { link = 'DiagnosticError', bg = 'NONE' },
            DiagnosticSignWarn = { link = 'DiagnosticWarn', bg = 'NONE' },
            DiagnosticSignInfo = { link = 'DiagnosticInfo', bg = 'NONE' },
            DiagnosticSignHint = { link = 'DiagnosticHint', bg = 'NONE' },
            DiagnosticSignOk = { link = 'DiagnosticOk', bg = 'NONE' },

            GitSignsAdd = { fg = palette.springGreen, bg = 'NONE' },
            GitSignsChange = { fg = palette.waveAqua1, bg = 'NONE' },
            GitSignsDelete = { fg = palette.samuraiRed, bg = 'NONE' },
            GitSignsTopdelete = { fg = palette.samuraiRed, bg = 'NONE' },
            GitSignsChangedelete = { fg = palette.roninYellow, bg = 'NONE' },

            -- number highlighting variant (if enabled)
            GitSignsAddNr = { fg = palette.springGreen, bg = 'NONE' },
            GitSignsChangeNr = { fg = palette.waveAqua1, bg = 'NONE' },
            GitSignsDeleteNr = { fg = palette.samuraiRed, bg = 'NONE' },
          }
        end,
      }

      vim.cmd 'colorscheme kanagawa-dragon'
    end,
  },
}
