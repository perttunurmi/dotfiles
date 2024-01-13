vim.keymap.set('n', '<F5>', function()
  vim.cmd 'vsplit | terminal make && ./a.out'
  vim.cmd 'quit'
end)


vim.keymap.set('n', '<leader>m', function()
  local current_tab = vim.api.nvim_get_current_tabpage()
  local wins = vim.api.nvim_tabpage_list_wins(current_tab)

  local found_terminal = false
  local terminal
  for _, win in ipairs(wins) do
    local buf = vim.api.nvim_win_get_buf(win)
    if vim.bo[buf].buftype == 'terminal' then
      found_terminal = true
      terminal = vim.bo[buf].buftype
      break
    end
  end

  if not found_terminal then
    vim.cmd('vsplit | terminal echo src/main.c | entr -c make')
    vim.cmd('clear')
  else
    vim.cmd('clear')
  end
end)
