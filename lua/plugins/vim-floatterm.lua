return {
  'voldikss/vim-floaterm',
  lazy = false,
  config = function()
    local function map(mode, lhs, rhs, opts)
      local options = { noremap = true, silent = true }
      if opts then
        options = vim.tbl_extend('force', options, opts)
      end
      vim.api.nvim_set_keymap(mode, lhs, rhs, options)
    end
    map('n', '<F12>', ':FloatermNew<CR>')
    map('t', '<F12>', '<C-\\><C-n>:FloatermNew<CR>')
    map('n', '<F11>', '<C-\\><C-n>:FloatermKill<CR> <bar> :FloatermToggle<CR>')
    map('t', '<F11>', '<C-\\><C-n>:FloatermKill<CR> <bar> :FloatermToggle<CR>')
    map('n', '<F7>', ':FloatermPrev<CR>')
    map('t', '<F7>', '<C-\\><C-n>:FloatermPrev<CR>')
    map('n', '<F9>', ':FloatermNext<CR>')
    map('t', '<F9>', '<C-\\><C-n>:FloatermNext<CR>')
    map('n', '<F8>', ':FloatermToggle<CR>')
    map('t', '<F8>', '<C-\\><C-n>:FloatermToggle<CR>')

    vim.g.floaterm_height = 0.5
    vim.g.floaterm_width = 0.5
    vim.g.floaterm_position = 'center'
    vim.g.floaterm_wintype = 'float'
    vim.g.floaterm_titleposition = 'center'

    local augroup = vim.api.nvim_create_augroup -- Create/get autocommand group
    local autocmd = vim.api.nvim_create_autocmd -- Create autocommand

    augroup('Floaterm', { clear = true })
    autocmd('FileType', {
      group = 'Floaterm',
      pattern = 'floaterm',
      callback = function()
        -- vim.api.nvim_buf_set_keymap(0, 't', '<c-l>', '<cmd>wincmd l<cr>', { silent = true, noremap = true })
        vim.api.nvim_buf_set_keymap(0, 't', '<c-h>', '<cmd>wincmd h<cr>', { silent = true, noremap = true })
        -- vim.api.nvim_buf_set_keymap(0, 't', '<c-j>', '<cmd>wincmd j<cr>', { silent = true, noremap = true })
        vim.api.nvim_buf_set_keymap(0, 't', '<c-k>', '<cmd>wincmd k<cr>', { silent = true, noremap = true })
        vim.api.nvim_buf_set_keymap(
          0,
          'n',
          '<F4>',
          ':FloatermUpdate --width=1.0 --height=0.3 --wintype=float --position=center<CR>',
          { silent = true, noremap = true }
        )
        vim.api.nvim_buf_set_keymap(
          0,
          't',
          '<F4>',
          '<C-\\><C-n>:FloatermUpdate --width=1.0 --height=0.3 --wintype=float --position=center<CR>',
          { silent = true, noremap = true }
        )
        vim.api.nvim_buf_set_keymap(
          0,
          'n',
          '<F6>',
          ':FloatermUpdate --width=0.4 --height=0.4 --wintype=float --position=center<CR>',
          { silent = true, noremap = true }
        )
        vim.api.nvim_buf_set_keymap(
          0,
          't',
          '<F6>',
          '<C-\\><C-n>:FloatermUpdate --width=0.4 --height=0.4 --wintype=float --position=center<CR>',
          { silent = true, noremap = true }
        )
        vim.api.nvim_buf_set_keymap(0, 't', '<ESC>', '<C-\\><C-n>', { silent = true, noremap = true })
      end,
    })
  end,
}
