vim.keymap.set(
  {'n', 'x', 'o'},
  "<Plug>(leap-window)",
  function () local focusable_windows_on_tabpage = vim.tbl_filter(
    function (win) return vim.api.nvim_win_get_config(win).focusable end,
    vim.api.nvim_tabpage_list_wins(0)
  )
  require('leap').leap { target_windows = focusable_windows_on_tabpage }
end)

vim.keymap.set({'n', 'x', 'o'}, 'f', "<Plug>(leap-window)", {silent = true})
