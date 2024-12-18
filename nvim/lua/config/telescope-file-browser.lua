require("telescope").setup {
  defaults = {
    file_ignore_patterns = {},
    hidden = true
  },
  extensions = {
    file_browser = {
      theme = "ivy",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        ["i"] = {
          -- your custom insert mode mappings
        },
        ["n"] = {
          -- your custom normal mode mappings
        },
      },
    },
  },
}
-- To get telescope-file-browser loaded and working with telescope,
-- you need to call load_extension, somewhere after setup function:
require("telescope").load_extension "file_browser"
vim.api.nvim_set_keymap(
  "n",
  "<leader>]",
  ":Telescope file_browser hidden=true<CR>",
  { noremap = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>[",
  ":Telescope file_browser path=%:p:h select_buffer=true hidden=true<CR>",
  { noremap = true }
)
