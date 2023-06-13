# programming_env_setup


### ZSH setup

You can directly use this to help setup zsh
```
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
or you can install the vanila setup us shown below

#### Install ZSH
```
sudo apt install zsh
```

Download or run this instead: https://github.com/ohmyzsh/ohmyzsh


Make it your default shell: 

```
chsh -s $(which zsh)
```


Copy the .zshrc file from this repo and paste it in ~/.zshrc. 
```
zsh
cp copy.zshrc ~/.zshrc
source ~/.zshrc
```
You will have to repeat the same command to setup for other users like root
```
sudo -i 
cd <repo directory>
cp .zshrc ~/.zshrc
source ~/.zshrc
```


Setup fonts (ignore for now)

```
git clone https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
./install.sh 
```


### NVIM Setup

#### Install NVIM


Install software-properties-common:
```
sudo apt-get install software-properties-common
```

Run the following commands:
```
sudo add-apt-repository ppa:neovim-ppa/unstable
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
cp -rf <repo location>/programming_env_setup/nvim/* ~/.config/nvim/.
```

Type nvim on zsh to setup and install the plugins
```
nvim
```
Type :Lazy to check what plugins are installed on nvim

Type :Mason to check what extra plugins you can use



#### `ChatGPT` setup
Inside nvim, to use ChatGpt, you need to follow the following steps

1. Select the lines that you need to pass onto chatgpt
```
Press Esc
Move to the starting of the line
Use Shift-V and arrow keys to select the area
```
2. Using ChatGpt
```
Type ':ChatGptRun optimize_code' to get started with using ChatGpt; 
```
3. Accept Changes
```
Press Ctrl+y to accept the recommentation
```


#### `ChatGPTActAs`
`ChatGPTActAs` command which opens a prompt selection from [Awesome ChatGPT Prompts](https://github.com/f/awesome-chatgpt-prompts) to be used with the `gpt-3.5-turbo` model.

![preview image](https://github.com/jackMort/ChatGPT.nvim/blob/media/preview-3.png?raw=true)

#### `ChatGPTEditWithInstructions`
`ChatGPTEditWithInstructions` command which opens interactive window to edit selected text or whole window using the `code-davinci-edit-002` model (GPT 3.5 fine-tuned for coding).


- [demo video](https://www.youtube.com/watch?v=dWe01EV0q3Q).

![preview image](https://github.com/jackMort/ChatGPT.nvim/blob/media/preview.png?raw=true)

#### `ChatGPTRun`

`ChatGPTRun [action]` command which runs specific actions -- see [`actions.json`](./lua/chatgpt/flows/actions/actions.json) file for a detailed list. Available actions are:
  1. `grammar_correction`
  2. `translate`
  3. `keywords`
  4. `docstring`
  5. `add_tests`
  6. `optimize_code`
  7. `summarize`
  8. `fix_bugs`
  9. `explain_code`
  10. `roxygen_edit`
  11. `code_readability_analysis` -- see [demo](https://youtu.be/zlU3YGGv2zY)

All the above actions are using `gpt-3.5-turbo` model.

It is possible to define custom actions with a JSON file. See [`actions.json`](./lua/chatgpt/flows/actions/actions.json) for an example. The path of custom actions can be set in the config (see `actions_paths` field in the config example above).


### Interactive popup
When using `ChatGPT` and `ChatGPTEditWithInstructions`, the following
keybindings are available:
- `<C-Enter>` [Both] to submit.
- `<C-y>` [Both] to copy/yank last answer.
- `<C-o>` [Both] Toggle settings window.
- `<Tab>` [Both] Cycle over windows.
- `<C-m>` [Chat] Cycle over modes (center, stick to right).
- `<C-c>` [Chat] to close chat window.
- `<C-u>` [Chat] scroll up chat window.
- `<C-d>` [Chat] scroll down chat window.
- `<C-k>` [Chat] to copy/yank code from last answer.
- `<C-n>` [Chat] Start new session.
- `<C-d>` [Chat] draft message (create message without submitting it to server)
- `<C-r>` [Chat] switch role (switch between user and assistant role to define a workflow)
- `<C-s>` [Both] Toggle system message window.
- `<C-i>` [Edit Window] use response as input.
- `<C-d>` [Edit Window] view the diff between left and right panes and use diff-mode
  commands

When the setting window is opened (with `<C-o>`), settigs can be modified by
pressing `Enter` on the related config. Settings are saved across sections
