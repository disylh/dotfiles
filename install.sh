#!/bin/bash

function link_file {
  source=$1
  target=$2
  if [ -e "${target}" ]; then
    mv $target $target.bak
    echo "${target} exists. rename to ${target}.bak"
  fi
  ln -sf ${source} ${target}
  echo "link ${target} to ${source}"
}

function copy_file {
  source=$1
  target=$2
  if [ -e "${target}" ]; then
    mv $target $target.bak
    echo "${target} exists. rename to ${target}.bak"
  fi
  cp -rf ${source} ${target}
  echo "copy ${source} to ${target}"
}

# find platform
platform='unknown'
unamestr="$(uname)"
if [[ "$unamestr" == 'Linux' ]]; then
  platform='linux'
elif [[ "$unamestr" == 'FreeBSD' ]]; then
  platform='freebsd'
elif [[ "$unamestr" == 'Darwin' ]]; then
  platform='osx'
fi
echo "platform=$platform"

if [[ "$platform" == 'osx' ]]; then
  # install homebrew
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew install zsh
  brew install autojump
fi

for i in `find . -maxdepth 1 -name 'dot.*' -print`
do
  link_file "${PWD}/$i" "${HOME}/${i//dot/}"
done

for i in `find . -maxdepth 1 -name 'cpdot.*' -print`
do
  copy_file "${PWD}/$i" "${HOME}/${i//cpdot/}"
done

link_file "${PWD}/dot.vim/vimrc" "${HOME}/.vimrc"
link_file "${PWD}/lukeye.zsh-theme" "${HOME}/.oh-my-zsh/themes/lukeye.zsh-theme" 

