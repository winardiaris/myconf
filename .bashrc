
JAVA_HOME=/home/ars/cordova_ex/jdk1.8.0_65
PATH=$PATH:/home/ars/cordova_ex/jdk1.8.0_65/bin
export JAVA_HOME

#ANT_HOME=/home/ars/cordova_ex/apache-ant-1.9.6
#PATH=$PATH:/home/ars/cordova_ex/apache-ant-1.9.6/bin
#export ANT_HOME

PATH=$PATH:/home/ars/cordova_ex/android-sdk-linux/platforms
PATH=$PATH:/home/ars/cordova_ex/android-sdk-linux/tools
PATH=$PATH:/home/ars/.vimpkg/bin

export PATH




##----------------- 
# bashrc style
alias ls='ls --color'
LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'
export LS_COLORS

export PS1="[\[\033[32m\]\w]\[\033[0m\]\n\[\033[1;36m\]\u\[\033[1;33m\]-> \[\033[0m\]"
alias artisan='php artisan'

export PROMPT_COMMAND='if [ "$(id -u)" -ne 0 ]; then echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(history 1)" >> ~/.logs/bash-history.log; fi'

export DEBFULLNAME="Aris Winardi"
export DEBMAIL="ariswinardy@gmail.com"

## disable ctrl-s
stty -ixon

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
