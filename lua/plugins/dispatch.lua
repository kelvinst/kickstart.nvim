return { -- Asynchronous tasks
  'tpope/vim-dispatch',
  event = 'VimEnter',
  keys = {
    {
      '<leader>dd',
      vim.cmd.Dispatch,
      desc = '[D]ispatch',
    },
    {
      '<leader>d<Space>',
      ':Dispatch ',
      desc = '[D]ispatch...',
    },
    {
      '<leader>dss',
      vim.cmd.Start,
      desc = '[S]tart ↵',
    },
    {
      '<leader>ds<Space>',
      ':Start ',
      desc = '[S]tart ...',
    },
    {
      '<leader>dq',
      function()
        vim.cmd 'Copen!'
      end,
      desc = '[Q]uickfix',
    },
  },
}
