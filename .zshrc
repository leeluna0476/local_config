if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

alias norm='norminette -R CheckForbiddenHeader'
alias normr='norminette -R CheckDefine'
alias ctags="`brew --prefix`/bin/ctags"
alias ls="ls -GF"
export MAIL='seojilee@student.42seoul.kr'
export PATH=$HOME/goinfre/.brew/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)

ZSH_THEME="powerlevel10k/powerlevel10k"
source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
