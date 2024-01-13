local bufnr = vim.api.nvim_get_current_buf()

local function run_command(bufnr)
  local file = vim.api.nvim_buf_get_name(bufnr)
  if file == '' then
    print('No file to run')
    return
  end

  local command = 'cat ' .. file
  local buffernr = vim.api.nvim_create_buf(true, true)
  print(buffernr)
end

run_command(bufnr)
