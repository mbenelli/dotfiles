autoload -Uz compinit && compinit

autoload -U +X bashcompinit && bashcompinit

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
setopt nocaseglob

source $HOME/.config/zsh/kak.zshrc
source $HOME/.profile

PROMPT='%% '
