
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="wedisagree"


# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git z web-search)


source $ZSH/oh-my-zsh.sh

# Customize to your needs..aP
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH
source ~/.nvm/nvm.sh
