#Exports
export GITAWAREPROMPT=~/.bash/git-aware-prompt
export PS1='\[\033[01;32m\]\u@\[$txtcyn\]$git_branch:\[\033[01;34m\]\w\[\033[00m\]\$ '
export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export PATH=/usr/local/mysql/bin:$PATH
export JAVA_HOME=$(/usr/libexec/java_home)
export ANDROID_HOME=/usr/local/opt/android-sdk
export TIZEN_SDK_HOME=/Users/ahmadaltamimi/tizen-studio
export ANDROID_NDK_HOME=/Users/ahmadaltamimi/android-ndk-r14b
export TIZEN_NACL_SDK_HOME=/Users/ahmadaltamimi/Downloads/pepper_47
export DEVELOPMENT_TEAM_ID=W4E9HL2DXS
export HOMEBREW_GITHUB_API_TOKEN=7730035f5df3d5b3bd24bd7a47182e4d0df9490b
export YOUIENGINE_HOME=$HOME/DTV/dtvmobile/youiengine
export FABRIC_OSX_HOME=$HOME/com.twitter.crashlytics.mac-manual
export FABRIC_IOS_HOME=$HOME/com.crashlytics.ios-manual
export GOOGLEANALYTICS_HOME=$HOME/GoogleAnalyticsServicesiOS_3.17


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
alias dtv='cd ~/DTV/dtvmobile/dtv'
alias gcc="gcc -w"
alias gcln='git clean -fdx'
alias gdiff='git difftool -t opendiff'
alias glog="git log --pretty=format:'%Cred%h%Creset%C(yellow)%d%Creset %s %Cgreen(%cr %an)%Creset' --abbrev-commit --date=relative"
alias grbs='git fetch upstream ; git rebase upstream/develop'
alias iosin='temp=`find . -iname *.app`; idevice_id -l | xargs -I {} ios-deploy -b $temp -i {}'
alias l="ls"
alias ll="ls -l"
alias log="adb logcat -v time | grep -i"
alias tcmenv='export YOUIENGINE_HOME=$HOME/TurnerInternational/youiengine; export YOUIENGINEONE_HOME=$HOME/TurnerInternational/viper; export TVSDK_ANDROID_HOME=$HOME/TurnerInternational/thirdparty/TVSDK_Android_1.4.39.1744; export DEVELOPMENT_TEAM_ID=QSFZLJUKHR; export TVSDK_IOS_HOME=$HOME/TurnerInternational/thirdparty/TVSDK_iOS_1.4.39.43; export FABRIC_IOS_HOME=$HOME/TurnerInternational/thirdparty/com.twitter.crashlytics.ios-manual; export FACEBOOK_IOS_HOME=$HOME/TurnerInternational/thirdparty/FacebookSDKs-iOS-4.18.0'
alias xcode8="sudo xcode-select -s /Applications/Xcode8.app/Contents/Developer"
alias xcode9="sudo xcode-select -s /Applications/Xcode.app/Contents/Developer"
alias xcv='xcodeuild -version'
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
