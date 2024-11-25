
-- Disable a few built-in plugins ================================{{{2
local disabled_built_ins = {
  "gzip",
  "man",
  "matchit",
  "matchparen",
  "shada_plugin",
  "tar",
  "tarPlugin",
  "zip",
  "zipPlugin",
}


for i = 1, #disabled_built_ins do
  vim.g["loaded_" .. disabled_built_ins[i]] = 1
end


-- Bootstrap packer.
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end


local packer_bootstrap = ensure_packer()

-- Run :PackerSync after making changes
return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"

  -- Used frequently ==================================={{{2

  -- Quickly find files.
  use {
    "nvim-telescope/telescope.nvim", branch = "0.1.x",
    requires = {{"nvim-lua/plenary.nvim"}},
    config = function() require("config.telescope") end
  }

  use {
    "nvim-telescope/telescope-file-browser.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    config = function() require("config.telescope-file-browser") end
  }

  -- Improved status bar.
  use {
    "nvim-lualine/lualine.nvim",
    requires = {{"kyazdani42/nvim-web-devicons"}, {"SmiteshP/nvim-navic"}},
    config = function() require("config.lualine") end
  }
    
  use {
    "ggandor/leap.nvim",
    config = function() require("config.leap") end
  }

  use 'neovim/nvim-lspconfig'

  -- Rust
  use {
    'williamboman/mason-lspconfig.nvim',
    requires = {{"williamboman/mason.nvim"}, {"neovim/nvim-lspconfig"}},
    config = function() require("config.mason-lspconfig") end
  }

  -- Cmp
  use {
    "hrsh7th/nvim-cmp",
    requires = {
      {"hrsh7th/cmp-nvim-lsp"},
      {"hrsh7th/cmp-buffer"},
      {"hrsh7th/cmp-path"},
      {"hrsh7th/cmp-cmdline"},
      -- `cmp-nvim-lsp` requires a snippet engine.
      {"hrsh7th/cmp-vsnip"},
      {"hrsh7th/vim-vsnip"}
    },
    config = function() require("config.cmp") end
  }

  use {
    "hrsh7th/vim-vsnip",
    config = function() require("config.vsnip") end
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require("packer").sync()
  end
end)

-- vim specific options ===================================================={{{1
-- vim: set foldmethod=marker:
-- nvim: set foldmethod=marker:
