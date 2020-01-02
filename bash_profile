set -o vi

export FULL_NAME=Sebastien\ Nicoud


mkpath() {
	if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
		PATH="${PATH:+"$PATH:"}$1"
	fi
}
export PATH
mkpath /Users/snicoud/bin

mkpath /usr/local/sbin

export JAVA_HOME=/opt/jdk-11
mkpath $JAVA_HOME/bin

export GROOVY_HOME=/opt/groovy
mkpath $GROOVY_HOME/bin

#export SCALA_HOME=/opt/scala
#mkpath $SCALA_HOME/bin

#export M2_HOME=/opt/apache-maven
#mkpath $M2_HOME/bin



export NODE_PATH=/usr/local/lib/node_modules

export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

export KEYSTORE_PASSWORD=P@ssw0rd

git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}
pbranch() {
	br=`git_branch`
	[ ! -z $br ] && echo -n "⎇ $br"
}

#export PS1="\! \u@\H:\w\n> "
export PS1='`[[ \$? = 0 ]] && echo "\[\e[0;36m\]\$?\[\e[m\]" || echo "\[\e[1;37;41m\]\$?\[\e[m\]"`\
\[\e[1;30m\] \[\e[m\]\
\[\e[0;37m\]\!\[\e[m\]\
\[\e[1;30m\] \[\e[m\]\
\[\e[0;34m\]\u\[\e[m\]\
\[\e[1;30m\]@\[\e[m\]\
\[\e[0;94m\]\H\[\e[m\]\
\[\e[1;30m\]:\[\e[m\]\
\w \
\[\e[33m\]`pbranch`\[\e[m\]\
\n\[\e[1;30m\]>\[\e[m\] '

alias ll='ls -alF'

