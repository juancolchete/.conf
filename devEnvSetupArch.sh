sudo pacman -S docker-buildx docker neovim git make fish ripgrep 
echo "source /opt/asdf-vm/asdf.fish" >> ~/.config/fish/config.fish
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
corepack enable
asdf reshim nodejs
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0
LV_BRANCH='release-1.4/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.4/neovim-0.9/utils/installer/install.sh)
echo "git username:"
read name
echo "git email:"
read email
git config --global user.name "$name"
git config --global user.email "$email"
ssh-keygen -t ed25519 -C "$email"