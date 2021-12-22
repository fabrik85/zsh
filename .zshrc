# Previously (before creating .bashrc) it was set to: /private/tmp/com.apple.launchd.Tg3RxFiCvl/Listeners
export SSH_AUTH_SOCK=~/.gnupg/S.gpg-agent.ssh

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship

source /Users/a.fabrik/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Per-Directory-History
source /Users/a.fabrik/zsh/per-directory-history/per-directory-history.zsh

# Enable color output via ls command
export CLICOLOR=1
# Custom colours for black background
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# Aliases
alias git st="git status"

# Load Git completion
# https://github.com/git/git/tree/master/contrib/completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

# Reload autocompletion
autoload -Uz compinit && compinit

# Go
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

# Brew
#export PATH="/usr/local/opt/mysql-client/bin:$PATH"
#export PATH="/usr/local/opt/terraform@0.12/bin:$PATH"
#export PATH="/usr/local/opt/terraform@0.13/bin:$PATH"

# AWS
export AWS_DEFAULT_REGION=eu-central-1

alias terraform12="/usr/local/Cellar/terraform@0.12/0.12.30/bin/terraform"
alias k=kubectl

# @link https://www.soberkoder.com/better-zsh-history/
export HISTFILESIZE=1000000000
export HISTSIZE=1000000000
export SAVEHIST=25000

## History command configuration
setopt extended_history       # record timestamp of command in HISTFILE
#setopt hist_find_no_dups     # show each command only 1x while searching with Ctrl+R
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_all_dups	  # not writing duplicates to the history file at all
#setopt hist_ignore_dups      # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
#setopt share_history         # share command history data
