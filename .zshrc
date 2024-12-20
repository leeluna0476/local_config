export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="jbergantine"

export MAIL='seojilee@student.42seoul.kr'
export PATH=$HOME/.bin:$HOME/goinfre/.brew/bin:$PATH
plugins=(git)
source $ZSH/oh-my-zsh.sh

alias norm='norminette -R CheckForbiddenHeader'
alias normr='norminette -R CheckDefine'
#alias ctags="`brew --prefix`/bin/ctags"
alias ls="ls -GF"
alias vi=vim
alias gls="git ls-files"

alias ssht="ssh macmini -t"
export LSCOLORS=Ex

USER=seojilee
export USER
MAIL=seojilee@student.42.fr
export MAIL
