export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH=/Users/jferrair/.oh-my-zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.aliases
source ~/.secrets
ZSH_THEME="robbyrussell"

plugins=(zsh-autosuggestions git rails ruby bundler sudo)
source ~/.oh-my-zsh/oh-my-zsh.sh
eval "$(rbenv init -)"
source /Users/jferrair/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
