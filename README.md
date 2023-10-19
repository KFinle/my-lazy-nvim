# My Lazy Nvim Setup

This walkthrough will get you up an running with the current Neovim setup I use.\
Customize it however you want! It's easy and fun once you get the hang of it.\
This install guide is for Ubuntu and I'm too lazy to convert it to other platforms right now.\
You'll figure it out though, no worries. You're big and smart, yes you are. 

## Note: For best experience, you'll also want to upgrade your Terminal as well!

### Terminal Install Steps

- Install Zsh if you don't already have it\
  `sudo apt install zsh -y`
- Install Oh-My-Zsh \
  `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
- Install a NerdFont. Here's the recommended one: https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k\
- Install Powerlevel10k \
  `git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k`\
  `echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc`
- Restart Zsh \
  `exec zsh`
- Go through the prompts 
- Install Nord Theme! Just look it up for whatever terminal you're using. 

---

### Neovim Install

- Optional, but recommended: install Ripgrep \
  `sudo apt-get install ripgrep`
- Install NPM (for the language servers/Intellisense. You'll see later.) 
- Install Neovim. NOTE INSTALL MUST BE 0.8 OR NEWER \
  `sudo add-apt-repository ppa:neovim-ppa/unstable`\
  `sudo apt update`\
  `sudo apt-get install neovim`
- Download this repository \
  If you are on Linux, navigate to `~/.config/nvim` and place the contents of this repo in it.\
  If `.config/nvim` does not exist, create it. 

# Congrats! 

You now have Neovim. You can now open any file by typing `nvim [filename]` in the terminal.\
You can open folders by typing `nvim [foldername]` where you'll be greeted with a file explorer.

### Hotkey and usage guide will come later!
