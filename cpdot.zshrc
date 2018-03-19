# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="sheeptheme"
#ZSH_THEME="alanpeabody"
#ZSH_THEME="example"
ZSH_THEME="lukeye"


# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

platform='unknown'
unamestr="$(uname)"
if [[ "$unamestr" == 'Linux' ]]; then
  platform='linux'
elif [[ "$unamestr" == 'FreeBSD' ]]; then
  platform='freebsd'
elif [[ "$unamestr" == 'Darwin' ]]; then
  platform='osx'
fi

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
if [[ "$platform" == 'osx' ]]; then
  plugins=(git autojump osx)
else
  plugins=(git autojump)
fi

# Customize to your needs...
export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH="$JAVA_HOME/bin:$PATH"
export PATH="$PATH:${HOME}/.iterm2/tools"

#[[ -s /usr/local/etc/profile.d/autojump.sh ]] && . /usr/local/etc/profile.d/autojump.sh

source $ZSH/oh-my-zsh.sh

# shortcut
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias q="exit"
alias shrc='vim ~/.zshrc'
alias shrc-source='source ~/.zshrc'
alias vimrc="vim ~/.vim/vimrc"

alias -s c=vim
alias -s cc=vim
alias -s cpp=vim
alias -s java=vim
alias -s py=vim
alias -s js=vim
alias -s html=vim
alias -s css=vim
alias -s rb=vim
alias -s php=vim
alias -s gradle=vim
alias -s txt=vim
alias -s md=vim
alias -s log=vim
alias -s tex=vim
alias -s sty=vim
alias -s cls=vim
alias -s aux=vim
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'

# emacs
#alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs -nw -l ~/.emacs.d/.init.el'
#alias emacsclient='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient'

