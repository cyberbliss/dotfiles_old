export TERM=xterm-256color
# zsh customisation
HISTFILE=$HOME/.zhistory
HISTSIZE=100000
SAVEHIST=$HISTSIZE
setopt hist_ignore_all_dups # remove older duplicate entries from history
setopt hist_reduce_blanks # remove superfluous blanks from history items
setopt inc_append_history # save history entries as soon as they are entered
setopt share_history # share history between different instances of the shell
setopt hist_verify # don't execute immediately on history expansion

setopt auto_cd # cd by typing directory name if it's not a command

#setopt correct_all # autocorrect commands
unsetopt correct_all # disable autocorrect - its too annoying

setopt auto_list # automatically list choices on ambiguous completion
setopt auto_menu # automatically use menu completion
setopt always_to_end # move cursor to end if word had one match

export CLICOLOR=1;
. ~/.dir_colours

autoload -Uz compinit
compinit

zstyle ':completion:*' menu select # select completions with arrow keys
zstyle ':completion:*' group-name '' # group results by category
zstyle ':completion:::::' completer _expand _complete _ignored _approximate # enable approximate matches for completion
#zstyle ':completion:*' format '%B---- %d%b'
zstyle ':completion:*:*:kubectl:*' list-grouped true
#zstyle ':completion:*:*' list-colors '=*=31'
zstyle ':completion:*' list-colors 'exfxcxdxbxegedabagacad'

# Customize to your needs...
alias l='ls -lah --color=auto --group-directories-first'
alias c='clear'

# Go config
export GOPATH=$HOME/dev_work/go
export PATH=$PATH:/usr/local/opt/go/libexec/bin:$GOPATH/bin

# History tweaks
alias h='history -i -200 -1'
function hs
{
    history 1 | grep $*
}


# Python stuff
# Stop Python from creating cached files
export PYTHONDONTWRITEBYTECODE=True

source ~/.aliases

eval "$(oh-my-posh init zsh --config ~/.config/stevejudd-full.omp.json)"

# Run antibody (https://getantibody.github.io/)
source <(antibody init)
antibody bundle < ~/.zsh_plugins.txt

