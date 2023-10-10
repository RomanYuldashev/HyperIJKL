#!/bin/zsh
if test -f "$HOME"/Library/KeyBindings/DefaultKeyBinding.dict \
&& ! (diff DefaultKeyBinding.dict "$HOME"/Library/KeyBindings/DefaultKeyBinding.dict > /dev/null 2>&1);
then
  echo "$HOME/Library/KeyBindings/DefaultKeyBinding.dict already exists.
Import of HyperIJKL's key bindings to DefaultKeyBinding.dict was not performed.
You will have to manually merge two key bindings:
1. Manually merge your existing DefaultKeyBinding.dict into HyperIJKL's DefaultKeyBinding.dict
2. Delete $HOME/Library/KeyBindings/DefaultKeyBinding.dict
3. Rerun 'make all' in HyperIJKL's home directory
"
elif ! test -f "$HOME"/Library/KeyBindings/DefaultKeyBinding.dict; then
  mkdir -p "$HOME"/Library/KeyBindings/ &&
  cp DefaultKeyBinding.dict "$HOME"/Library/KeyBindings/DefaultKeyBinding.dict &&
  echo "HyperIJKL's DefaultKeyBinding.dict copied to $HOME/Library/KeyBindings/"
else
  echo "Correct DefaultKeyBinding.dict already exists. All good!"
fi
