return { -- Github Copilot suggestions AI
  'github/copilot.vim',
  init = function()
    vim.keymap.set('i', '<C-c><CR>', 'copilot#Accept("\\<CR>")', {
      expr = true,
      replace_keycodes = false,
      desc = '[C]opilot Accept',
    })

    vim.keymap.set('i', '<C-c>n', '<Plug>(copilot-next)', {
      noremap = false,
      desc = '[C]opilot [N]ext',
    })

    vim.keymap.set('i', '<C-c>p', '<Plug>(copilot-previous)', {
      noremap = false,
      desc = '[C]opilot [P]revious',
    })

    vim.keymap.set('i', '<C-c><Space>', '<Plug>(copilot-suggest)', {
      noremap = false,
      desc = '[C]opilot Suggest',
    })

    vim.g.copilot_no_tab_map = true
  end,
}
