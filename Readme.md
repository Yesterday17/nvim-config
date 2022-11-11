# Yesterday17's neovim configuration

## Pre-Requirements

```bash
sudo pacman -S fd
sudo pacman -S ripgrep
sudo pacman -S shfmt stylua

# GUI
sudo pacman -S neovide

# For Copilot
paru -S nvm
echo 'source /usr/share/nvm/init-nvm.sh' >> ~/.bashrc
echo 'source /usr/share/nvm/init-nvm.sh' >> ~/.zshrc
nvm install 16
```

## Setup

```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Enter nvim
# :PackerSync
# :checkhealth telescope
# :LspInstall lua
```
