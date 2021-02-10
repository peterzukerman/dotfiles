# /opt/homebrew/bin  #brew path
PATH=/usr/local/bin:$PATH
#PATH=/usr/local/bin/code

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PYTHONIOENCODING=UTF-8
export UBBLE_BACKEND_ROOT=/Users/doinkmachine/Projects/Radiate/scaling-tribble/django_root
export UBBLE_VE=/Users/doinkmachine/Projects/Radiate/ubble_ve

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"

# Change the file location because certain bash sessions truncate .bash_history file upon close.
# http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login
#export HISTFILE=~/.bash_eternal_history
# Force prompt to write history after every command.
# http://superuser.com/questions/20900/bash-history-loss
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
#if [ -f `brew --prefix`/etc/bash_completion ]; then
#  . `brew --prefix`/etc/bash_completion
#fi
alias sudo="sudo"  # https://askubuntu.com/questions/22037/aliases-not-available-when-using-sudo
alias arev="adb reverse tcp:8000 tcp:8000;adb reverse tcp:8081 tcp:8081"
alias randroid="arev; npx react-native run-android; arev"
alias reloadroid="adb shell input text \“RR\“"

# With this, you can now ctrl-s to reverse cycle from a reverse-i search
#stty -ixon
# For making PS1, use
#  http://bashrcgenerator.com/
export PS1="\[\033[38;5;6m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;9m\]\w\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;2m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
# For use in fastlane
export DELIVER_USER=pzukerman17@gmail.com
export RADIATE_TST_EMAIL=peter@radiatetheworld.com
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export DJANGO_SETTINGS_MODULE=server_conf.settings.settings_dev_local

alias gsu="git status -uno"
alias gca="git commit --amend --no-edit"
git_cdiff() {
  # Shows different commits between git branches.
  git log --left-right --graph --cherry-pick --oneline ...$1
}

# ~/.bash_profile
alias radiate="cd ~/Projects/Radiate/scaling-tribble/django_root/ && source ~/Projects/Radiate/ubble_ve/bin/activate"

export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
# Change the file location because certain bash sessions truncate .bash_history file upon close.
# http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login
export HISTFILE=~/.bash_eternal_history
# Force prompt to write history after every command.
# http://superuser.com/questions/20900/bash-history-loss
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"


alias duse="du -sh *|gsort -h"
alias rs_local="django-admin runserver 0.0.0.0:8000 --settings server_conf.settings.settings_dev_local"
alias rs_localr="django-admin runserver 0.0.0.0:8000 --settings server_conf.settings.settings_dev_local_gc_static"
alias rs_localaws="django-admin runserver 0.0.0.0:8000 --settings server_conf.settings.settings_dev_local_aws_static"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
