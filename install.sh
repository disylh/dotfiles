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

for i in `find . -name 'dot*' -print`
do
  link_file "${PWD}/$i" "${HOME}/${i//dot/}"
done

link_file "${PWD}/dot.vim/vimrc" "${HOME}/.vimrc"
link_file "${PWD}/lukeye.zsh-theme" "${HOME}/.oh-my-zsh/themes/lukeye.zsh-theme" 

