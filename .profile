#Exports
export GITAWAREPROMPT=~/.bash/git-aware-prompt
export PS1='\[\033[01;32m\]\u@\[$txtcyn\]$git_branch:\[\033[01;34m\]\w\[\033[00m\]\$ '
export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export PATH=/usr/local/mysql/bin:$PATH
export JAVA_HOME=$(/usr/libexec/java_home)


source "${GITAWAREPROMPT}/main.sh"
eval "$(rbenv init -)"

# Aliases
alias adbclear="adb shell pm list packages -f| grep -i youi | sed 's/.*=//g' | xargs -t -I {} adb shell pm clear {}"
alias adbin='temp=`find . -iname *.apk`; adb devices | sed 1d |awk '\''{print $1}'\'' | xargs -I {} adb -s {} install -r $temp'
alias adbcharles='cat ~/Desktop/charles-ssl-proxying-certificate.pem >> /Users/ahmadaltamimi/DTV/dtvmobile/dtv/Resources/android/cacert.pem'
alias buildandroid='adbcharles;start=`date +%s`;./generate.rb -p android; ./build.rb -b build/android; adbin; end=`date +%s`; echo "it took $((end-start))s to build and deploy"'
alias buildios='start=`date +%s`;./generate.rb -p ios; ./build.rb -b build/ios; iosin; end=`date +%s`; echo "it took $((end-start))s to build and deploy"'
alias charles='/Applications/Charles.app/Contents/MacOS/Charles &'
alias clearappsandroid="adb shell pm list packages -f| grep -i youi | sed 's/.*=//g' | xargs -t -I {} adb shell pm uninstall {}"
alias clearappsios='ios-deploy -B | grep youi | xargs -t -I {} ios-deploy --uninstall_only --bundle_id {}'
alias gcc="gcc -w"
alias gcln='git clean -fdx'
alias gdiff='git difftool -t opendiff'
alias glog="git log --pretty=format:'%Cred%h%Creset%C(yellow)%d%Creset %s %Cgreen(%cr %an)%Creset' --abbrev-commit --date=relative"
alias grbs='git fetch upstream ; git rebase upstream/develop'
alias iosin='temp=`find . -iname *.app`; idevice_id -l | xargs -I {} ios-deploy -b $temp -i {}'
alias l="ls"
alias ll="ls -l"
alias log="adb logcat -v time | grep -i"
alias sc='python ~/screenrecord.py'
alias stash='git stash'
alias pop='git stash pop'

#Functions
squash(){
	if [ $# -eq 0 ]; then
	    echo "No number of commits given"
	else
		git rebase -i HEAD~$1
	fi
}
