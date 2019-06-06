# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi


color () {
  if [ -z "$1" -a -z "$2" -a -z "$3" ]; then
    echo "\033[0m"
    return
  fi
  case $1 in
    black)   color_fg=30;;
    red)     color_fg=31;;
    green)   color_fg=32;;
    yellow)  color_fg=33;;
    blue)    color_fg=34;;
    magenta|purple) color_fg=35;;
    cyan)    color_fg=36;;
    white)   color_fg=37;;
    orange)   color_fg=202;;
    -)       color_fg='';;
    *)       color_fg=39;;
  esac
  case $2 in
    bold)      color_bd=1;;
    italics)   color_bd=3;;
    underline) color_bd=4;;
    inverse)   color_bd=7;;
    strike)    color_bd=9;;
    nobold)      color_bd=22;;
    noitalics)   color_bd=23;;
    nounderline) color_bd=24;;
    noinverse)   color_bd=27;;
    nostrike)    color_bd=29;;
    -)         color_bd='';;
    *)         color_bd=0
  esac
  case $3 in
    black)   color_bg=40;;
    red)     color_bg=41;;
    green)   color_bg=42;;
    yellow)  color_bg=43;;
    blue)    color_bg=44;;
    magenta|purple) color_bg=45;;
    cyan)    color_bg=46;;
    white)   color_bg=47;;
    -)       color_bg='';;
    *)       color_bg=49;;
  esac
  s='\033['
  if [ -n "$color_bd" ]; then
    s="${s}${color_bd}"
    if [ -n "$color_fg" -o -n "$color_bg" ]; then
      s="${s};"
    fi
  fi
  if [ -n "$color_fg" ]; then
    s="${s}${color_fg}"
    if [ -n "$color_bg" ]; then
      s="${s};"
    fi
  fi
  if [ -n "$color_bg" ]; then
    s="${s}${color_bg}"
  fi
  s="${s}m"
  echo "$s"
  unset s color_bd color_bg color_fg
}
color_reset=`color`
color_grbd=`color green bold`
color_bubd=`color blue bold`
color_orbd=`color orange bold`
color_rdbd=`color red bold`

# ------------ set command prompt -----------------------------
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PS1="\n\[${color_rdbd}\]${USER}\[${color_reset}\]:\[\033[38;5;32m\]\W\
\[\033[m\033[38;5;208m\]\$(parse_git_branch)\n$ \[\033[m\]"
PROMPT_COMMAND='echo -ne "\033]0;${USER}:/${PWD##*/}\007"'

# alias
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias ipynb='jupyter notebook'
alias ipynb_docker='jupyter notebook --no-browser --allow-root --ip 0.0.0.0'
