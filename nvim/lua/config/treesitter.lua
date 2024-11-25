require("nvim-treesitter.configs").setup {
  ensure_installed = {
    "c",
    "cpp",
    "diff",
    "gitcommit",
    "lua",
    "python",
    "rust",
    "vim",
  },

  sync_install = true,

  highlight = {
    enable = true,
    disable = function(lang, buf)
      local max_filesize = 4 * 1024 * 1024 -- 4 MiB.
      local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
      if ok and stats and stats.size > max_filesize then
        return true
      end
    end,
  },
  indent = {
    enable = true,
    --disable = {"python"}
  },

  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ["aa"] = "@parameter.outer",
        ["ia"] = "@parameter.inner",
        ["ab"] = "@block.outer",
        ["ib"] = "@block.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["as"] = "@statement.outer",
        ["is"] = "@statement.outer",
      },
    },
    move = {
      enable = true,
      set_jumps = true,
      --[[
      -- mapping : direction (start|end)? obj_type
      -- direction: previous | next
      -- previous: [
      -- next: ]
      -- start: [
      -- end: ]
      --
      -- When (start|end) is omitted, we use implicitly the start.
      --]]
      goto_next_start = {
        ["][a"] = "@parameter.outer",
        ["][b"] = "@block.outer",
        ["][c"] = "@class.outer",
        ["][f"] = "@function.outer",
        ["][s"] = "@statement.outer",
        ["]a"] = "@parameter.outer",
        ["]b"] = "@block.outer",
        ["]c"] = "@class.outer",
        ["]f"] = "@function.outer",
        ["]s"] = "@statement.outer",
      },
      goto_next_end = {
        ["]]a"] = "@parameter.outer",
        ["]]b"] = "@block.outer",
        ["]]c"] = "@class.outer",
        ["]]f"] = "@function.outer",
        ["]]s"] = "@statement.outer",
      },
      goto_previous_start = {
        ["[[a"] = "@parameter.outer",
        ["[[b"] = "@block.outer",
        ["[[c"] = "@class.outer",
        ["[[f"] = "@function.outer",
        ["[[s"] = "@statement.outer",
        ["[a"] = "@parameter.outer",
        ["[b"] = "@block.outer",
        ["[c"] = "@class.outer",
        ["[f"] = "@function.outer",
        ["[s"] = "@statement.outer",
      },
      goto_previous_end = {
        ["[]a"] = "@parameter.outer",
        ["[]b"] = "@block.outer",
        ["[]c"] = "@class.outer",
        ["[]f"] = "@function.outer",
        ["[]s"] = "@statement.outer",
      },
    },
    swap = {
      enable = true,
      swap_next = { ["<leader>a"] = "@parameter.inner", },
      swap_previous = { ["<leader>A"] = "@parameter.inner", },
    },
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "+",
      scope_incremental = "grc",
      node_decremental = "-",
    },
  },
}

vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
vim.opt.foldlevelstart = 99
