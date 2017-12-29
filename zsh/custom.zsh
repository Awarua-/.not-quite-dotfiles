ZSH_THEME="no-theme"
ENABLE_CORRECTION="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

# for tiny-care-terminal
export TTC_REPOS="~/dev","~/.not-quite-dotfiles"
export TTC_REPOS_DEPTH=6
export TTC_GITBOT='gitlog'
export TTC_WEATHER='Sydney'
export TCC_SAY_BOX='panda'

# go stuff
export GOPATH=/Users/dwoolley/dev

# the secret-keys.zsh file contains these vars:
# export TTC_CONSUMER_KEY="..."
# export TTC_CONSUMER_SECRET="..."
# export TTC_ACCESS_TOKEN="..."
# export TTC_ACCESS_TOKEN_SECRET="..."

if [[ -a $HOME/.not-quite-dotfiles/zsh/secret-keys.zsh ]]; then
  source $HOME/.not-quite-dotfiles/zsh/secret-keys.zsh
fi

export LANG=en_AU.UTF-8
export LC_ALL=en_AU.UTF-8

source $ZSH/oh-my-zsh.sh
source $HOME/.not-quite-dotfiles/zsh/prompt
source $HOME/.not-quite-dotfiles/zsh/aliases
source $HOME/.not-quite-dotfiles/zsh/chrome

source $HOME/.not-quite-dotfiles/tmux/mux.sh

export PATH="/usr/local/git/current/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:$(go env GOPATH)/bin"

export NVM_DIR="/Users/noms/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi


care_bot() {
  node ~/.not-quite-dotfiles/bin/tinycarebot/run.js
}

blerg() {
  Color_Off='\033[0m'       # Text Reset
  Cyan='\033[0;36m'         # Cyan
  echo ""
  echo "$Cyan｡.・゜゜・｡.｡☆*☆｡.｡・゜゜・..・゜゜・｡.｡☆*☆｡.｡・゜゜・.｡$Color_Off"
  echo "$Cyan*☆｡.｡・゜゜・.｡  ☆｡.｡・゜・.. *☆｡.｡・゜゜・.｡  ☆｡.｡・゜$Color_Off"
  echo $(care_bot) | fmt -c -w 42
  echo "$Cyan*☆｡.｡・゜゜・.｡  ☆｡.｡・゜・.. *☆｡.｡・゜゜・.｡  ☆｡.｡・゜$Color_Off"
  echo "$Cyan｡.・゜゜・｡.｡☆*☆｡.｡・゜゜・..・゜゜・｡.｡☆*☆｡.｡・゜゜・.｡$Color_Off"
  echo ""
}

blerg
