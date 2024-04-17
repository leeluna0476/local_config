export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="jbergantine"

export MAIL='seojilee@student.42seoul.kr'
export PATH=$HOME/goinfre/.brew/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
export PATH=$HOME/goinfre/.brew/bin:$PATH
plugins=(git)
source $ZSH/oh-my-zsh.sh

alias norm='norminette -R CheckForbiddenHeader'
alias normr='norminette -R CheckDefine'
alias ctags="`brew --prefix`/bin/ctags"
alias ls="ls -GF"
export LSCOLORS=Ex
rm -fr .zcompdump*
