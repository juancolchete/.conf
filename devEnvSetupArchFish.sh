rm ~/.config/fish/config.fish
echo source "\$HOME/.cargo/env.fish" >> ~/.config/fish/config.fish
echo export PATH="\$HOME/.local/bin:\$PATH" >> ~/.config/fish/config.fish
echo source ~/.asdf/asdf.fish >> ~/.config/fish/config.fish
echo export PATH="\$HOME/.local/share/solana/install/active_release/bin:\$PATH" >> ~/.config/fish/config.fish
echo export PATH="\$HOME/.avm/bin:\$PATH" >> ~/.config/fish/config.fish
source ~/.config/fish/config.fish
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
corepack enable
asdf reshim nodejs
