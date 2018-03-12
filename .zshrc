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
antigen bundle sindresorhus/pure

antigen apply

# etc

export LANG=ko_KR.UTF-8
export EDITOR=nvim

alias vim="nvim"
alias vi="nvim"
alias vimdiff='nvim -d'
alias oldvim="\vim"
alias v='f -e nvim'
alias mux="tmuxinator"
