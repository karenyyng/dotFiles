## set terminal to vi mode!
#set -o vi
## bind -m vi-insert "\C-l":clear-screen

## variables (path shortcuts) ----------------------------------------------
OBS="/Users/karenyng/Documents/Research/Observation"
DEIMOS="/Users/karenyng/Documents/Research/DEIMOS/"
SIM='/Users/karenyng/Documents/Research/code/SIM'
RESCODE='/Users/karenyng/Documents/Research/code'
MCCutils="${RESCODE}/MCCutils"
ResearchCode="${RESCODE}/ResearchCode"
ECLIPSE_HOME=/Applications/Eclipse.app/Contents/Eclipse/
ELGOANA=${RESCODE}/ElGordo_analysis/elgordo_analysis_code
ELGOMCMAC="${RESCODE}/TSM/mercury_elGo/Feb_data"
MCMC_nfw="${RESCODE}/MCMC_nfw"
paper1='/Users/karenyng/Documents/Research/papers/ElGo_paper/'
slides=~/Documents/Research/slides/
WINE='/Users/karenyng/Wine\ Files/drive_c/Program\ Files'
relax_cat_path=${RESCODE}/SIM/karens_data/relaxed_clusters/rockstar_catalogs
visnap_path=${RESCODE}/SIM/visnap/scripts
runs='/Users/karenyng/Documents/Research/runs'
HEADAS=/Users/karenyng/Software/heasoft-6.16/x86_64-apple-darwin14.1.0


### variables (machine names)--------------------------------------------------------
#HILBERT='karenyng@hilbert.ucdavis.edu'
#GAUSS='kyyng@gauss.cse.ucdavis.edu'
#IOTA="karenyng@iota.physics.ucdavis.edu" 
#GOLD="karenyng@gold.physics.ucdavis.edu"
#THETA="karenyng@theta.physics.ucdavis.edu"
#MERCURY="karenyng@mercury.physics.ucdavis.edu"
#blank="blank@108.245.209.250"
#EGGTART="billylo@98.246.220.81"
VULCAN="ng36@vulcan.llnl.gov"
CAB="ng36@cab.llnl.gov"
OSLIC="ng36@oslic.llnl.gov"
TEXSTY="/Users/karenyng/Library/texmf/tex/latex/commonstuff"
# MROCHA="karen@mrocha.org"




###environment variables --------------------------------------------------------
#LS_COLORS='di=34;47:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'
#LSCOLORS=GxFxCxDxBxegedabagaced
LSCOLORS=exfxcxdxbxegedabagacad
# export VIM=/usr/local/share/nvim/
# export VIMRUNTIME=/usr/local/share/nvim/runtime
export VIM=/opt/local/bin/Resources/vim/
export VIMRUNTIME=/opt/local/share/vim/vim74/

export EDITOR=/usr/local/bin/nvim
export LSCOLORS
export CLICOLOR=NO
export SIM=/Users/karenyng/Documents/Research/code/SIM
export XPA_METHOD=local
# export VIMRUNTIME='/opt/local/bin/Resources/vim/runtime/'
export runs 
export ELGOANA
export relax_cat_path
export visnap_path
export paper1
export slide1
export RESCODE
export PYTHONSTARTUP=~/Software/ipython_startup.py
export STAT250="/Users/karenyng/Documents/Courses/Winter14Stat250"
export pystrava="/Users/karenyng/Documents/Courses/Stat298/strava-project/pystrava"
export STAT145="/Users/karenyng/Documents/Courses/Stat145"
export PHY154="/Users/karenyng/Documents/Teaching/Phy154"
export R_LIBS="~/Software/R"
# export PYTHONSITEPACKAGES=/opt/local/Library/Frameworks/Python.framework/\
# Versions/2.7/lib/python2.7/site-packages
# export PYTHONSITEPACKAGES=/opt/local/Library/Frameworks/Python.framework/Versions/3.4/lib/python3.4/site-packages/
export HEADAS 
export LENSTOOL_DIR="/Users/karenyng/Software/lenstool/"
export JAVA_HOME=$(/usr/libexec/java_home)
export EC2_HOME=/usr/local/ec2/ec2-api-tools-1.7.5.1

#setenv VIM /usr/share/vim/
#setenv VIMRUNTIME /usr/share/vim/vim73/

### autoenv  ------------------------------------------------------------
source /opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin/activate.sh

#bash_completion lines --------------------------------------------------------
if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
      . /opt/local/etc/profile.d/bash_completion.sh
fi

### setting command prompt --------------------------------------------------------
PS1="\[\033[32;5;32m\]Noctis\[${color_reset}\]:\[\033[38;5;32m\]\W\
\[\033[m\033[38;5;208m\]$ \[\033[m\]"
PROMPT_COMMAND='echo -ne "\033]0; Noctis:/${PWD##*/}\007"'

#---------MACPORT SETTINGS--------------------------------------------

##
# Your previous /Users/karenyng/.bash_profile file was backed up as 
# /Users/karenyng/.bash_profile.macports-saved_2013-11-27_at_22:44:21
##

# MacPorts Installer addition on 2013-11-27_at_22:44:21: 
# adding an appropriate PATH variable for use with MacPorts.
# export PATH=/bin:/opt/local/bin:/opt/local/sbin:$PATH
# export PATH=/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin/:${PATH}
# export PATH=/opt/local/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages/:$PATH

export PATH=/bin:/opt/local/bin:/opt/local/sbin:\
/System/Library/Frameworks/Tcl.framework/Versions/8.5/Resources/Scripts/:\
/usr/bin:/usr/local/bin:/opt/local/Library/Frameworks/
export PATH=$PATH:/Users/karenyng/Software/julia
export PATH=$PATH:/Users/karenyng/Documents/scriptutils/csh
export PATH=$PATH:$EC2_HOME/bin
# export PATH=$PATH:/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin/
# export PATH=$PATH:/usr/src/mongodb-osx-x86_64-3.2.1/bin

# Finished adapting your PATH environment variable for use with MacPorts.

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

##
# Your previous /Users/karenyng/.bash_profile file was backed up 
# as /Users/karenyng/.bash_profile.macports-saved_2015-01-05_at_12:07:48
##

# MacPorts Installer addition on 2015-01-05_at_12:07:48: 
# adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# -------PYTHONPATH related settings ---------------------------
# export PYTHONPATH=/opt/local/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages/

# export PYTHONPATH=/Users/karenyng/Documents/Research/DEIMOS:\
# ${RESCODE}/MCCutils/:${RESCODE}/ResearchCode/:\
# ${RESCODE}/ResearchCode/centroid/:${RESCODE}/:${SIM}/:${RESCODE}/MCMAC/:\
# ${RESCODE}/TSM/:$visnap_path:${RESCODE}/MCMC_nfw:/opt/local/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages/

### alias --------------------------------------------------------

#alias irkernel="ipython notebook --KernelManager.kernel_cmd="['R', '-e',\
#        'IRkernel::main()', '--args', '{connection_file}']""
#alias pip="pip --disable-pip-version-check"
alias julia="/Users/karenyng/Software/julia/julia"
alias DockIntellihide='/Applications/DockIntellihide.app/Contents/MacOS/applet &'
alias autopep8='autopep8 --in-place --aggressive --aggressive' 
alias top='top -o CPU'
alias gdb="ggdb"
alias splitshow='open -a /Applications/SplitShow.app'
alias ls='ls -G'
# alias rm='rmtrash'
alias ipynb='jupyter notebook'
alias ipyqt='ipython qtconsole --pylab=inline &'
# alias wine="/Applications/Wine.app/Contents/Resources/bin/wine"
alias sshEggtartIPython1="ssh -N -f -L 8893:127.0.0.1:8888 eggtart" 
alias sshEggtartIPython2="ssh -N -f -L 8894:127.0.0.1:8889 eggtart" 
alias sshMERCURYIPython1="ssh -N -f -L 8895:127.0.0.1:8893 mercury" 
alias sshMROCHA='sshpass -p "07101989" ssh -o StrictHostKeyChecking=no -XC $MROCHA'
alias rmcalibre='rm -rf ~/Downloads/osx32*'
alias refreshSTY="sudo texhash"
alias ipyqt="ipython qtconsole --pylab=inline &"
# alias pdfxcview='wine /Users/karenyng/Wine\ Files/drive_c/Program\ Files/Tracker\ Software/PDF\ Viewer/PDFXCview.exe'
# #alias pdfxcview="open -a /Applications/PDFXCView.app/"
alias ds9_v6="open -a /Applications/SAOImage\ DS9.app/"
#alias macvim="/Applications/MacPorts/MacVim.app/Contents/MacOS/MacVim"
alias timestamp='date +"%Y-%m-%d %T"'
alias heainit=". $HEADAS/headas-init.sh"
alias ds9="/Applications/SAOImage\ DS9.app/Contents/MacOS/ds9"
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome &"
alias dockerDaemon='/Applications/Docker/Docker\ Quickstart\ Terminal.app/Contents/MacOS/applet'
# alias tmux="TERM=screen-256color-bce tmux -2"
# alias sshIPython="ssh -N -f -L $2:127.0.0.1:$3 $1 -vvv" 


# MacPorts Installer addition on 2016-09-02_at_19:58:35: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

