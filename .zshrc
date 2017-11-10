# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/sbin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/iamshawnrice/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="clean"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
alias android-adb="~/Library/Android/sdk/platform-tools/adb"
alias android-fastboot="~/Library/Android/sdk/platform-tools/fastboot"
alias apacherestart="sudo apachectl -k restart"

alias hosts="subl /etc/hosts"
alias httpdconf="subl /usr/local/etc/apache2/2.4/httpd.conf"

alias vhosts="subl /usr/local/etc/apache2/2.4/extra/httpd-vhosts.conf"

alias ze="subl ~/.zshrc"
alias zr="source ~/.zshrc"


# custom functions

edithosts() {
	hosts && vhosts
}

hidefiles() {
	defaults write com.apple.finder AppleShowAllFiles NO
	killall Finder /System/Library/CoreServices/Finder.app
}

showfiles() {
	defaults write com.apple.finder AppleShowAllFiles YES
	killall Finder /System/Library/CoreServices/Finder.app
}