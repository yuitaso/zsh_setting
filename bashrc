
# git settings
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/git/contrib/completion/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true

export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
