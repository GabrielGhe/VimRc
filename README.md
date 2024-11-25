## The Structure is

```
~/.bashrc
~/.tmux.conf
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

1. Install all the things

Mac installs

```
firefox (with treetab) iterm2 rectangle
```

Necessary packages

```
brew install fzf glances mosh neovim pyright tmux
```

NVim with plug

```
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

safe VIM_INSTALL_PLUGINS=1 nvim -c PlugInstall -c :qa
```

Install pylsp (python lsp server)

```
sudo python -m pip install pylsp
```


2. Run `:PackerSync` or `:PackerInstall` to install all the packer plugins.

3. Download [FiraCode font](https://www.nerdfonts.com/font-downloads) and double tap "FiraCode Nerd Font Mono" to install on Mac

4. Update iterm2 to use new profile + new font (Settings -> profiles -> Text) and set it to 15 points size.

5. Make sure to setup the movement keys for tmux + nvim

6. Install Mason
  - :MasonInstall bash-language-server buildifier bzl codelldb pyright rust-analyzer   
