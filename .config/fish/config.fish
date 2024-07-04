# Prefer US English and use UTF-8.
set --export LANG 'en_US.UTF-8'
set --export LC_ALL 'en_US.UTF-8'
set --export UID (id -u)

# Declutter $HOME
set --export --path XDG_DATA_HOME "$HOME/.local/share"
set --export --path XDG_CONFIG_HOME "$HOME/.config"
set --export --path XDG_STATE_HOME "$HOME/.local/state"
set --export --path XDG_CACHE_HOME "$HOME/.cache"
set --export --path XDG_RUNTIME_DIR "/run/user/$UID"

# fzf.fish
set --export fzf_git_log_opts "--preview-window=down"

# https://gist.github.com/pudquick/29bc95b6c49703992981864e48f8e341
alias brew '~/.local/homebrew/bin/brew'

# silence welcome message in interactive shells
set fish_greeting

fish_add_path ~/.local/bin
fish_add_path /usr/local/texlive/2023/bin/universal-darwin
fish_add_path /Applications/kdiff3.app/Contents/MacOS
fish_add_path /Library/TeX/texbin

function tmosh
    mosh $argv -- tmux new-session -A -s ssh_tmux
end

starship init fish | source

# Run fastfetch only once after boot or first shell start
if not test -f /tmp/.fastfetch_shown
    if type -q fastfetch
        fastfetch
        touch /tmp/.fastfetch_shown
    end
end

