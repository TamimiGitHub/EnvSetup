export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
alias log="adb logcat -v time | grep -i"
alias grbs='git fetch upstream ; git rebase upstream/develop'
alias log="adb logcat -v time | grep -i"
alias l="ls"
alias ll="ls -l"
alias gcc="gcc -w"
alias glog="git log --pretty=format:'%Cred%h%Creset%C(yellow)%d%Creset %s %Cgreen(%cr %an)%Creset' --abbrev-commit --date=relative"
alias xcv='xcodebuild -version'
alias adbin='adb install -r'
alias clearappsios='ios-deploy -B | grep youi | xargs -t -I {} ios-deploy --uninstall_only --bundle_id {}'
alias clearappsandroid="adb shell pm list packages -f| grep -i youi | sed 's/.*=//g' | xargs -t -I {} adb shell pm uninstall {}"
alias gcln='git clean -fdx'
alias sdb=/Users/ahmadaltamimi/tizen-studio/tools/sdb


export JAVA_HOME=$(/usr/libexec/java_home)

export ANDROID_HOME=/usr/local/opt/android-sdk

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

cd /Users/ahmadaltamimi/RogersEclipse
