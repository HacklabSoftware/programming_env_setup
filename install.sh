# Setup Zsh

echo "Installing zsh ... "
# Install oh my zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cp copy.zshrc ~/.zshrc

echo "Zsh setup done"


echo "Installing Nerd fonts .."
# Nerd Fonts
#
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
./install.sh 


echo "Nerd fonts installed"


echo "Installing nvim .."

# Install neovim
sudo apt-get install software-properties-common -y

sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim -y



sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
sudo update-alternatives --config vi
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
sudo update-alternatives --config vim
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
sudo update-alternatives --config editor


echo "Copying nvim setup files"
rm -rf ~/.config/nvim
mkdir ~/.config/nvim
cp -rf ./nvim_setup/nvim/* ~/.config/nvim/.

echo "Installation done"

