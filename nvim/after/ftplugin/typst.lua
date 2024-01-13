vim.api.nvim_create_autocmd('BufWritePost', {
  pattern = { "*.typ" },
  callback = function ()
    local filename = vim.api.nvim_buf_get_name(0)
    vim.cmd(":silent !typst compile " .. filename)
  end
})
