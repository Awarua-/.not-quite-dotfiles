ZSH_THEME="no-theme"
NIX_INSTALLER_NO_MODIFY_PROFILE=true
COMPLETION_WAITING_DOTS=true
DISABLE_UNTRACKED_FILES_DIRTY=true
NVM_LAZY=1
NVM_AUTOLOAD=1

plugins=(cp git brew history dircycle gpg-agent last-working-dir npm nvm osx tmux pyenv)

# go stuff
export GOPATH=/Users/dwoolley/dev/go

export LANG=en_AU.UTF-8
export LC_ALL=en_AU.UTF-8

source $ZSH/oh-my-zsh.sh
() {
  source $HOME/.not-quite-dotfiles/zsh/prompt
  source $HOME/.not-quite-dotfiles/zsh/aliases

  source $HOME/.not-quite-dotfiles/tmux/mux.sh
}

export PATH="/usr/local/opt/curl-openssl/bin:/usr/local/git/current/bin:/usr/bin:/bin:/usr/local/bin:/usr/local/sbin:/usr/sbin:/sbin:$(go env GOPATH)/bin:/usr/local/opt/postgresql@9.5/bin:$HOME/.jenv/bin:/nix/var/nix/profiles/default/bin:/opt/local/bin:$HOME/.cargo/bin:/usr/X11/bin"

() {
  eval "$(jenv init -)"
} 

# For compilers to find zlib you may need to set:
export LDFLAGS="${LDFLAGS} -L/usr/local/opt/zlib/lib -L/usr/local/opt/openssl/lib"
export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/zlib/include -I/usr/local/opt/openssl/include"
export PYCURL_SSL_LIBRARY=openssl

# For pkg-config to find zlib you may need to set:
export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /usr/local/opt/zlib/lib/pkgconfig /usr/local/opt/curl-openssl/lib/pkgconfig"

() {
  # Write the completion script to somewhere in your $fpath
  mkdir -p ~/.zsh_functions
  atlas --completion-script-zsh > ~/.zsh_functions/_atlas

  # Ensure compinit is loaded
  autoload -U compinit && compinit
}

cd ~