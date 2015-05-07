#!/bin/bash
find $PWD -type f -name ".*" -exec ln -sf {} $HOME/ \;
find $PWD/.oh-my-zsh -type f -exec ln -sf {} $HOME/ \;
