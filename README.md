# programming_env_setup


### ZSH setup

#### Install ZSH
```
sudo apt install zsh
```


Make it your default shell: 

```
chsh -s $(which zsh)
```


Copy the .zshrc file from this repo and paste it in ~/.zshrc. You will have to repeat the same command to setup for other users like root
```
cp .zshrc ~/.zshrc

sudo -i 
cd <repo directory>
cp .zshrc ~/.zshrc
```



### NVIM Setup

#### Install NVIM


Install software-properties-common:
```
sudo apt-get install software-properties-common
```

Run the following commands:
```
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
```


To use Neovim as default editor, use the following commands:

```
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
sudo update-alternatives --config vi
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
sudo update-alternatives --config vim
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
sudo update-alternatives --config editor
```

Copy the nvim folder to your ~/.config/nvim folder

```
mkdir ~/.config/nvim
cp -rf nvim/* ~/.config/nvim/.
```
