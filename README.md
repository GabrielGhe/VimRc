## The Structure is

```
~/.config/nvim/
├── colors
│   └── quiet.vim
├── init.vim
└── lua
    ├── config
    │   ├── cmp.lua
    │   ├── leap.lua
    │   ├── lspconfig.lua
    │   ├── lualine.lua
    │   ├── lualine-quiet.lua
    │   ├── telescope-file-browser.lua
    │   ├── telescope.lua
    │   ├── treesitter.lua
    │   └── vsnip.lua
    ├── plugins.lua
    └── quiet.lua
```

## TODO

1. Install NVim with plug

```
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

safe VIM_INSTALL_PLUGINS=1 nvim -c PlugInstall -c :qa
```

Install pylsp (python lsp server)
```
sudo python -m pip install pylsp
```

2. Run `:PackerSync` or `:PackerInstall` to install all the packer plugins.

3. Install NerdFont into Iter2 to support lualine and Telescope

4. Make sure to setup the movement keys for tmux + nvim
