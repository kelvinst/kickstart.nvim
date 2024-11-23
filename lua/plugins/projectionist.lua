return {
  'tpope/vim-projectionist',
  event = 'VimEnter',
  config = function()
    vim.g.projectionist_heuristics = {
      ['&mix.exs'] = {
        ['*'] = {
          dispatch = 'mix test',
          start = 'iex -S mix phx.server',
        },
        ['lib/*.ex'] = {
          type = 'lib',
          alternate = 'test/{}_test.exs',
        },
        ['test/*_test.exs'] = {
          type = 'test',
          alternate = 'lib/{}.ex',
          dispatch = 'mix test {file}',
        },
        ['mix.exs'] = { type = 'mix' },
        ['config/*.exs'] = { type = 'config' },
      },
    }
  end,
}
