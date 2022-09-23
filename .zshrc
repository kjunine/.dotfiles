# antigen

source /usr/local/share/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle osx
antigen bundle git
antigen bundle git-flow
antigen bundle wd
antigen bundle fasd

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

antigen bundle mafredri/zsh-async
# antigen bundle sindresorhus/pure

antigen apply

# pure
autoload -U promptinit; promptinit
prompt pure

# etc

export LANG=en_US.UTF-8
export EDITOR=nvim

alias vim="nvim"
alias vi="nvim"
alias vimdiff='nvim -d'
alias oldvim="\vim"
alias v='f -e nvim'
alias mux="tmuxinator"
alias gfp="gf -p"
alias gcob="gco -b"
alias gcot="gco -t"

unsetopt share_history

