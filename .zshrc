export ZSH="$HOME/.oh-my-zsh"

alias norm='norminette -R CheckForbiddenHeader'
alias normr='norminette -R CheckDefine'
alias ctags="`brew --prefix`/bin/ctags"
alias ls="ls -GF"
export MAIL='seojilee@student.42seoul.kr'
export PATH=$HOME/goinfre/.brew/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
alias ls="ls -GF"
export LSCOLORS=Ex
export PATH=$HOME/goinfre/.brew/bin:$PATH
ZSH_THEME="jbergantine"
plugins=(git)

source $ZSH/oh-my-zsh.sh
rm -fr .zcompdump*
