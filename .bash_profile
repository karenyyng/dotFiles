## set terminal to vi mode!
#set -o vi
## bind -m vi-insert "\C-l":clear-screen

## --------variables (path shortcuts) ------------------------------------
ECLIPSE_HOME=/Applications/Eclipse.app/Contents/Eclipse/
slides=~/Documents/Research/slides/


###-------environment variables -------------------------------------------
LSCOLORS=exfxcxdxbxegedabagacad
export LSCOLORS

export OMP_NUM_THREADS=1
export CLICOLOR=NO
export slides
export R_LIBS="~/Software/R"
export JAVA_HOME=$(/usr/libexec/java_home)
export EC2_HOME=/usr/local/ec2/ec2-api-tools-1.7.5.1
export IP=$(ifconfig | grep inet | grep broad | awk '{print $2}')
export EDITOR=/usr/local/bin/nvim
export ACTIVATE=~/miniconda3/bin/activate
export CONDA=~/miniconda3/bin/conda

#--------- bash_completion lines ------------------------------
if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
      . /opt/local/etc/profile.d/bash_completion.sh
fi

# ----------setting command prompt --------------------------------------
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
PS1="\[\033[32;5;32m\]Noctis\[${color_reset}\]:\[\033[38;5;32m\]\w\
\[\033[m\033[38;5;208m\]\$(parse_git_branch)\n\$ \[\033[m\]"
PROMPT_COMMAND='echo -ne "\033]0; Noctis:/${PWD##*/}\007"'

# ---------- use powerline-shell as the prompt-----------------------------
# function _update_ps1() {
#     PS1=$(powerline-shell $?)
# }
# if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
#     PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
# fi


#---------SETTINGS--------------------------------------------
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:/Users/karenyng/Documents/scriptutils/csh
export PATH=$PATH:$EC2_HOME/bin
export PATH=$PATH:~/miniconda3/bin
export PATH=$PATH:/Library/TeX/texbin/

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

### -------- alias --------------------------------------------------------
alias vim="nvim"
alias autopep8='autopep8 --in-place --aggressive --aggressive' 
alias top='top -o CPU'
alias splitshow='open -a /Applications/SplitShow.app'
alias ls='ls -G -1'
alias ipynb='jupyter notebook'
alias ipyqt='ipython qtconsole --pylab=inline &'
alias rmcalibre='rm -rf ~/Downloads/osx32*'
alias ipyqt="ipython qtconsole --pylab=inline &"
alias timestamp='date +"%Y-%m-%d %T"'
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome &"
alias dockerDaemon='/Applications/Docker/Docker\ Quickstart\ Terminal.app/Contents/MacOS/applet'
alias grep='grep --color=auto'
