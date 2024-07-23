# run it direcly on fish
sudo pacman -S docker-buildx docker neovim git make fish ripgrep python-pynvim openssh lazygit
echo "git username:"
read name
echo "git email:"
read email
git config --global user.name "$name"
git config --global user.email "$email"
ssh-keygen -t ed25519 -C "$email"
cat /home/juanc/.ssh/github.pub
echo "when add ssh key hit enter"
read ok
sh -c "$(curl -sSfL https://release.solana.com/v1.18.18/install)"
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish
rm -rf /home/juanc/.local/share/lunarvim.old
rm ~/.config/fish/config.fish
LV_BRANCH='release-1.4/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.4/neovim-0.9/utils/installer/install.sh)
#echo source "\$HOME/.cargo/env.fish" >> ~/.config/fish/config.fish
rm ~/.cargo/env.fish
echo export PATH="\$HOME/.local/bin:\$PATH" >> ~/.config/fish/config.fish
echo source ~/.asdf/asdf.fish >> ~/.config/fish/config.fish
echo export PATH="\$HOME/.local/share/solana/install/active_release/bin:\$PATH" >> ~/.config/fish/config.fish
echo source ~/.asdf/asdf.fish >> ~/.config/fish/config.fish
echo export PATH="\$HOME/.avm/bin:\$PATH" >> ~/.config/fish/config.fish
source ~/.config/fish/config.fish
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
corepack enable
asdf reshim nodejs
rm ~/.config/lvim 
git clone git@github.com:juancolchete/LunarVimLinux.git ~/.config/lvim
