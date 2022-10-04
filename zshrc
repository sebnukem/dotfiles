# VI edit mode
bindkey -v

#PROMPT='%(?.%F{34}√.%F{red}X%?)%f %! %F{37}%n%F{248}@%F{39}%m%F{240}:%F{195}%~ %f%b%#> '
# git_super_status from https://github.com/zsh-git-prompt/zsh-git-prompt
source ~/git/zsh-git-prompt/zshrc.sh
PROMPT='%(?.%F{34}√.%F{red}X%?)%f %! %F{37}%n%F{248}@%F{39}%m%F{240}:%F{195}%~ %f%b$(git_super_status) > '

alias ll='ls -alFG'

# this needed by HBase
# Java home = `/usr/libexec/java_home`
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/amazon-corretto-8.jdk/Contents/Home
export JAVA_HOME=`/usr/libexec/java_home -v 18`

# Groovy, if installed from zip file in /opt/
export PATH="$PATH:/opt/groovysdk/bin"

# mysql cli commands not symlinked by Brew because MysqlWorkbench is already installed
export PATH="$PATH:/usr/local/opt/mysql-client/bin"
export PATH="$PATH:/opt/maven/bin"

# Golang
export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

# nvm, from brew install nvm note
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# my stuff
export PATH="/Users/snicoud/bin:$PATH"
export PATH="/Users/snicoud/.bin":$PATH

