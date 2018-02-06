
# vcs_infoロード    
autoload -Uz vcs_info    
# PROMPT変数内で変数参照する    
setopt prompt_subst    

# vcsの表示    
zstyle ':vcs_info:*' formats '%F{red}(๑•̀ㅂ•́)و✧(%b)%f'    
zstyle ':vcs_info:*' actionformats '%F{red}(๑•̀ㅂ•́)و✧(%b%[%a])%f'    
# プロンプト表示直前にvcs_info呼び出し    
precmd() { vcs_info }

export PROMPT='%F{green}%n@%m%f:%F{blue}%2d%f${vcs_info_msg_0_} $ '

export RPROMPT='[📅 %D 🕐 %*]'

# ------------------------------
# General Settings
# ------------------------------
###色を使用出来るようにする###
autoload -Uz compinit
compinit

### Complement ###
autoload -U compinit; compinit # 補完機能を有効にする
setopt no_beep  # 補完候補がないときなどにビープ音を鳴らさない

### History ###
setopt pushd_ignore_dups  # 重複したディレクトリを追加しない

# ------------------------------
# Look And Feel Settings
# ------------------------------
export LANG=ja_JP.UTF-8  # 文字コードをUTF-8に設定
export KCODE=u           # KCODEにUTF-8を設定
export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=36:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
zstyle ':completion:*' list-colors 'di=36' 'ln=35' #'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'

# ------------------------------
# PATH Settings
# ------------------------------

### GOPATH
export GOPATH=$HOME/.go

### PATH
export PATH=$PATH:~/.rbenv/shims
export PATH=$PATH:~/.nodebrew/current/bin
export PATH=$PATH:~/.phpenv/bin
export PATH=$PATH:$GOPATH/bin

export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

# ------------------------------
# Alias
# ------------------------------

### restart shell 
export SHELL=/bin/zsh # specify zsh
alias restart='exec $SHELL -l'

### global
alias ls='ls -GF'
alias ipadd='ifconfig | grep "inet "'

### git
alias -g 'git status'='git status --porcelain --branch'
alias -g gst='git status'
alias -g gdf='git diff'
alias -g 'git diff file'='git diff --name-only'
alias -g gdfc='git diff --cached'
alias -g gdfn='git diff --name-only'
alias -g gco='git checkout'
alias -g gcob='git checkout -b'
alias -g gsh='git stash'
alias -g gsha='git stash apply'
alias -g gshl='git stash list'
alias -g gshu='git stash -u'
alias -g gad='git add'
alias -g gadu='git add -u'
alias -g gadp='git add -p'
alias -g gcm='git commit'
alias -g gcmm='git commit -m'
alias -g gcma='git commit --amend'
alias -g gpl='git pull'
alias -g gps='git push'
alias -g grb='git rebase'
alias -g grbi='git rebase -i'
alias -g grv='git revert'
alias -g grs='git reset'
alias -g grsh='git reset --hard'
alias -g grss='git reset --soft'
alias -g glg='git log'
alias -g glgo='git log --oneline'
alias -g glgp='git log -p'
alias -g gbr='git branch'
alias -g gbrd='git branch -d'
alias -g gbrD='git branch -D'
alias -g gnw='git log --oneline --decorate --all --graph'
