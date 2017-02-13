#!/bin/zsh
if [ "$(uname)" = "Darwin" ] ; then
    PATH=/usr/local/opt/coreutils/libexec/gnubin:${PATH}
    PATH=${PATH}:/usr/local/bin
    PATH=${PATH}:~/Library/Python/3.5/bin
    PATH=${PATH}:/opt/X11/bin
    PATH=/usr/local/opt/findutils/libexec/gnubin:${PATH}
fi

PATH=${PATH}:~/.local/bin
PATH=${PATH}:~/.cask/bin
PATH=${PATH}:~/.cabal/bin
PATH=${PATH}:~/.cargo/bin
PATH=${PATH}:~/node_modules/.bin
PATH=${PATH}:~/.rbenv/bin

eval "$(rbenv init -)"

PROMPT="%(?.%{%F{magenta}%}.%{%F{red}%})%B%n%F{reset_color}@%(?.%{%F{magenta}%}.%{%F{red}%})%B%m%u%f:%F{green}%d%F{reset_color}%# "

HISTFILE=~/.zsh_history
HISTSIZE=2000
SAVEHIST=2000
