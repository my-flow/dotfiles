# Prefer US English and use UTF-8.
set --export LANG 'en_US.UTF-8'
set --export LC_ALL 'en_US.UTF-8'
set --export UID (id -u)

# Declutter $HOME
set --export --path XDG_DATA_HOME "$HOME"/.local/share
set --export --path XDG_CONFIG_HOME "$HOME"/.config
set --export --path XDG_STATE_HOME "$HOME"/.local/state
set --export --path XDG_CACHE_HOME "$HOME"/.cache
set --export --path XDG_RUNTIME_DIR /run/user/"$UID"

# AWS CLI
set --export --path AWS_SHARED_CREDENTIALS_FILE "$XDG_CONFIG_HOME"/aws/credentials
set --export --path AWS_CONFIG_FILE "$XDG_CONFIG_HOME"/aws/config

# docker
set --export --path DOCKER_CONFIG "$XDG_CONFIG_HOME"/docker

# fzf.fish
set --export fzf_git_log_opts "--preview-window=down"

# Avoid issues with `gpg` as installed via Homebrew.
# https://stackoverflow.com/a/42265848/96656
set --export GPG_TTY (tty);

# Homebrew
set --export HOMEBREW_NO_ANALYTICS "1"
set --export HOMEBREW_NO_INSECURE_REDIRECT "1"
set --export HOMEBREW_CASK_OPTS "--require-sha"
set --export HOMEBREW_CASK_OPTS "--appdir=/Applications"

# Don’t clear the screen after quitting a manual page.
set --export MANPAGER "less -X"

# readline
set --export --path INPUTRC "$XDG_CONFIG_HOME"/readline/inputrc

# Starship
set --export STARSHIP_LOG "error"

# Make vim the default editor.
set --export EDITOR "hx"

# Mosh
set --export MOSH_SERVER_NETWORK "prefer-inet6"

# w3m
set --export --path W3M_DIR "$XDG_DATA_HOME"/w3m

# wget
set --export --path WGETRC "$XDG_CONFIG_HOME"/wgetrc

# zellij
set --export ZELLIJ_AUTO_ATTACH true
