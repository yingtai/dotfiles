#vim
alias vim=/Applications/MacVim.app/Contents/MacOS/vim

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

alias srm='javaws ~/Develop/Contest/SRM/Arena/ContestAppletProd.jnlp'

alias ghc='ghc -L/usr/lib'

export VERSIONER_PYTHON_PREFER_32_BIT="yes"
##
# Your previous /Users/eita/.bash_profile file was backed up as /Users/eita/.bash_profile.macports-saved_2011-08-04_at_21:40:17
##

# MacPorts Installer addition on 2011-08-04_at_21:40:17: adding an appropriate PATH variable for use with MacPorts.
#export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
export EPREFIX="$HOME/Gentoo"
export PATH="$EPREFIX/usr/bin:$EPREFIX/bin:$EPREFIX/tmp/usr/bin:$EPREFIX/tmp/bin:$PATH"

#Haskell
export PATH="$HOME/Library/Haskell/bin:$PATH"
export PATH="$HOME/.cabal/bin:$PATH"

#java
alias javac='javac -J-Dfile.encoding=UTF-8'
alias java='java -Dfile.encoding=UTF-8'

#export PYTHONPATH="/Library/Python/2.7/site-packages/:/Library/Python/2.7/site-packages/PIL-1.1.7-py2.7-macosx-10.7-intel.egg/"

export PYTHONPATH="/Library/Python/2.7/site-packages/tweepy-1.7.1-py2.7.egg"
export PYTHONPATH="/Library/Python/2.7/site-packges/PIL-1.1.7-py2.7-macosx-10.7-intel.egg:$PYTHONPATH"
#golang
export GOROOT=$HOME/go
export GOOS=darwin
export GOARCH=amd64
export GOBIN=$GOROOT/bin
export PATH=$GOBIN:$PATH

#rvm
export PATH="~/.rvm/bin/:$PATH"

#heroku gem
export PATH="~/.rvm/gems/ruby-1.9.2-p290/gems/heroku-2.14.0/bin:$PATH"

##
# Your previous /Users/eita/.bash_profile file was backed up as /Users/eita/.bash_profile.macports-saved_2011-10-13_at_12:27:27
##

# MacPorts Installer addition on 2011-10-13_at_12:27:27: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

#for Boost
#export PATH="/opt/local/bin:/opt/local/sbin/:$PATH"
export MANPATH="/opt/local/man"
export LIBRARY_PATH="/opt/local/lib"
export LD_LIBRARY_PATH="/opt/local/lib"
export C_INCLUDE_PATH="/opt/local/include"
export CPLUS_INCLUDE_PATH="/opt/local/include"
export DYLD_FALLBACK_LIBRARY_PATH="/opt/local/lib"
export BOOST_ROOT="/opt/local/include/boost"

#android
export PATH=$PATH:/Applications/android-sdk-mac_x86-1.0_r2/tools


#svn
export SVN_EDITOR=vim
