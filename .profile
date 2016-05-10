export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
eval "$(rbenv init -)"
alias log="adb logcat -v time | grep -i"
alias in="instruments -s | grep '[a-zA-Z0-9]\{5\}[a-zA-Z0-9]\{15\}'"
# | sed 's/.*\[\([^]]*\)\].*/\1/g'
alias rv="rvictl -s"
alias visual="log | grep -i visual "
alias caid="log | grep -i caid "
alias signin="log 'Message Event : SignIn --' -A 12"
alias msgbus="log messagebus"


export JAVA_HOME=$(/usr/libexec/java_home)

export ANDROID_HOME=/usr/local/opt/android-sdk

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

cd /Users/ahmadaltamimi/RogersEclipse
