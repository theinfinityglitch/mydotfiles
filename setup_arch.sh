sudo pacman -S git clang krita inkscape steam spotify-launcher cmake firefox discord fish github-cli
sudo chsh -s /bin/fish
fish -c 'fish_config prompt choose arrow'
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
curl -f https://zed.dev/install.sh | sh
fish -c 'fish_add_path -U ~/.local/bin'
sudo cp disable_keyboard.sh /usr/local/sbin/
sudo cp diable_keyboard.service /etc/systemd/system/
mkdir ~/Documents/coding
mkdir ~/Documents/coding/rust
mkdir ~/Documents/gamedev
cd ~/Documents/coding/rust/
git clone --recurse-submodules https://github.com/theinfinityglitch/lib_input_helper.git
cd lib_input_helper
~/.cargo/bin/cargo build --release
sudo cp target/release/lib_input_helper /usr/bin/
sudo systemctl daemon-reload
sudo systemctl enable diable_keyboard.service
fish
