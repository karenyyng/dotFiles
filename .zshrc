
###-------environment variables --------------------------------------
LSCOLORS=exfxcxdxbxegedabagacad
export LSCOLORS

export OMP_NUM_THREADS=2
export CLICOLOR=NO
export slides
export R_LIBS="~/Software/R"
export JAVA_HOME=$(/usr/libexec/java_home)
export EC2_HOME=/usr/local/ec2/ec2-api-tools-1.7.5.1
export IP=$(ifconfig | grep inet | grep broad | awk '{print $2}')
export EDITOR=/usr/local/bin/nvim
export ACTIVATE=~/miniconda3/bin/activate
export CONDA=~/miniconda3/bin/conda


# ----------setting command prompt --------------------------------
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
PS1="%(?.%F{83}.)%n%F{reset}: %F{45}%2~%F{reset}%F{208}$(parse_git_branch)"$'\n'"$ %F{reset}"

PROMPT_COMMAND='echo -ne "\033]0; Kerrigan:/${PWD##*/}\007"'

#---------SETTINGS--------------------------------------------
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:/Users/$USER/Documents/scriptutils/csh
export PATH=$PATH:$EC2_HOME/bin
export PATH=$PATH:/Library/TeX/texbin/
export PATH="/Users/$USER/miniconda3/bin:$PATH"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

### -------- alias ----------------------------------------------------
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
alias gitlog='git log --oneline --graph --color --all --decorate'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/karenyng/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/karenyng/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/karenyng/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/karenyng/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup

# #If you'd prefer that conda's base environment not be activated on startup,
# #   set the auto_activate_base parameter to false:
#
# # conda config --set auto_activate_base false
# <<< conda initialize <<<

bindkey -v
