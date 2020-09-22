ZSH_THEME="no-theme"
ENABLE_CORRECTION="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
NIX_INSTALLER_NO_MODIFY_PROFILE="true"

plugins=(git gitfast git-extras nix nix-shell aws brew dirhistory dircycle gpg-agent history-filter jira last-working-dir npm osx yarn tmux python)

# for tiny-care-terminal
export TTC_REPOS="~/dev","~/.not-quite-dotfiles"
export TTC_REPOS_DEPTH=6
export TTC_GITBOT='gitlog'
export TTC_WEATHER='Sydney'
export TCC_SAY_BOX='panda'

# go stuff
export GOPATH=/Users/dwoolley/dev/go

export LANG=en_AU.UTF-8
export LC_ALL=en_AU.UTF-8

setopt HIST_IGNORE_SPACE

source $ZSH/oh-my-zsh.sh
source $HOME/.not-quite-dotfiles/zsh/prompt
source $HOME/.not-quite-dotfiles/zsh/aliases

source $HOME/.not-quite-dotfiles/tmux/mux.sh

export PATH="/usr/local/opt/curl-openssl/bin:/usr/local/git/current/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:$(go env GOPATH)/bin:/usr/local/opt/postgresql@9.5/bin:$HOME/.jenv/bin:/nix/var/nix/profiles/default/bin:/opt/local/bin:$HOME/.cargo/bin"

eval "$(jenv init -)"

export NVM_DIR="/Users/dwoolley/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

# For compilers to find zlib you may need to set:
export LDFLAGS="${LDFLAGS} -L/usr/local/opt/zlib/lib -L/usr/local/opt/openssl/lib"
export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/zlib/include -I/usr/local/opt/openssl/include"
export PYCURL_SSL_LIBRARY=openssl

# For pkg-config to find zlib you may need to set:
export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /usr/local/opt/zlib/lib/pkgconfig /usr/local/opt/curl-openssl/lib/pkgconfig"

# if [[ -f "${HOME}/.config/cloudtoken/bashrc_additions" ]]; then
#     source "${HOME}/.config/cloudtoken/bashrc_additions"
# fi

# Write the completion script to somewhere in your $fpath
atlas --completion-script-zsh > ~/.zsh_functions/_atlas

# Ensure compinit is loaded
autoload -U compinit && compinit

# care_bot() {
#   node ~/.not-quite-dotfiles/bin/tinycarebot/run.js
# }

# blerg() {
#   Color_Off='\033[0m'       # Text Reset
#   Cyan='\033[0;36m'         # Cyan
#   echo ""
#   echo "$Cyan｡.・゜゜・｡.｡☆*☆｡.｡・゜゜・..・゜゜・｡.｡☆*☆｡.｡・゜゜・.｡$Color_Off"
#   echo "$Cyan*☆｡.｡・゜゜・.｡  ☆｡.｡・゜・.. *☆｡.｡・゜゜・.｡  ☆｡.｡・゜$Color_Off"
#   echo $(care_bot) | fmt -c -w 42
#   echo "$Cyan*☆｡.｡・゜゜・.｡  ☆｡.｡・゜・.. *☆｡.｡・゜゜・.｡  ☆｡.｡・゜$Color_Off"
#   echo "$Cyan｡.・゜゜・｡.｡☆*☆｡.｡・゜゜・..・゜゜・｡.｡☆*☆｡.｡・゜゜・.｡$Color_Off"
#   echo ""
# }

# blerg
