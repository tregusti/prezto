#!/bin/zsh

if [ ! -d $HOME/.zprezto ]; then
  ln -s `pwd` $HOME/.zprezto
fi

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  local dotpath="$HOME/.${rcfile:t}"
  if [[ -a "$dotpath" ]]; then
    print "Skipping: $dotpath"
  else
    print "Linking: $dotpath"
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
  fi
done