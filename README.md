# Dotfiles for Ubuntu

Initial config for Ubuntu environments. Tested with 20.04 (focal).

## Usage
Install git: `sudo apt install git`

Clone this repo into ~/dev_work:  
```
git clone https://github.com/cyberbliss/dotfiles.git ~/dev_work/dotfiles
```

cd into ~/dev_work/dotfiles/scripts and execute setup.sh

## Final steps
Make zsh the default shell: `sudo chsh -s $(which zsh) $(whoami)`

## tmux cheatsheet
`t` - attach to existing session or start new one (if none)  
`tl` - list sessions  

When in tmux:  
backtick (\`) is the bind key  
`bk` d = detach from session but leave running  
`bk` - | = new horizontal/vertical pane  
`bk` x = kill current pane  
`bk` c = new window  
`bk` & = kill current window  

