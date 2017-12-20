
# setting command prompt --------------------------------------------------------
PS1="\[\033[32;5;32m\]Elixir\[${color_reset}\]:\[\033[38;5;32m\]\W\
\[\033[m\033[38;5;208m\]$ \[\033[m\]"
PROMPT_COMMAND='echo -ne "\033]0; Elixir:/${PWD##*/}\007"'


export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8


### alias --------------------------------------------------------

alias ipynb='jupyter notebook'
