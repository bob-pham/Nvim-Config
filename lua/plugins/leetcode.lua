return {
  'kawre/leetcode.nvim',
  build = ':TSUpdate html',
  lazy = false,
  dependencies = {
    'nvim-telescope/telescope.nvim',
    'nvim-lua/plenary.nvim', -- required by telescope
    'MunifTanjim/nui.nvim',

    -- optional
    -- 'nvim-treesitter/nvim-treesitter',
    -- 'rcarriga/nvim-notify',
    -- 'nvim-tree/nvim-web-devicons',
  },
  opts = {
    ---@type lc.storage
    storage = {
      home = vim.fn.expand '/home/bobpham/projects/leetcode',
      cache = vim.fn.stdpath 'cache' .. '/leetcode',
      -- home = vim.fn.stdpath 'data' .. '/leetcode',
      -- cache = vim.fn.stdpath 'cache' .. '/leetcode',
    },
    ---@type boolean
    logging = false,

    ---@type lc.lang
    lang = 'python3',
  },
}
