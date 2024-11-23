return { -- Asynchronous tasks
  'tpope/vim-dispatch',
  event = 'VimEnter',
  keys = {
    {
      '<leader>d<CR>',
      vim.cmd.Dispatch,
      desc = '[D]ispatch ↵',
    },
    {
      '<leader>d<Space>',
      ':Dispatch ',
      desc = '[D]ispatch...',
    },
    {
      '<leader>dq',
      function()
        vim.cmd 'Copen!'
      end,
    },
  },
}
