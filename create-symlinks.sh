#!/bin/zsh

if [ ! -d $HOME/.zprezto ]; then
  ln -s `pwd` $HOME/.zprezto
fi

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done