return {
  'stevearc/conform.nvim',
  lazy = false,
  -- event = 'BufWritePre', -- uncomment for format on save
  keys = {
    {
      '<leader>fm',
      function()
        require('conform').format { async = true, lsp_fallback = true }
      end,
      mode = '',
      desc = 'Format buffer',
    },
  },
  opts = {
    notify_on_error = false,
    formatters_by_ft = {
      lua = { 'stylua' },
      css = { 'prettier' },
      html = { 'prettier' },
      python = { 'isort', 'black' },
      rust = { 'rustfmt' },
      cpp = { 'clang_format' },
      javascript = { 'deno' },
      typescript = { 'deno' },
      typescriptreact = { { 'prettierd', 'prettier' } },
      javascriptreact = { { 'prettierd', 'prettier' } },
    },

    -- format_on_save = {
    --   -- These options will be passed to conform.format()
    --   timeout_ms = 500,
    --   lsp_fallback = true,
    -- },
  },

  -- require("conform").setup(options)
}
