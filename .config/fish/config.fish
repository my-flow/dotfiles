# https://gist.github.com/pudquick/29bc95b6c49703992981864e48f8e341
alias brew '~/.local/homebrew/bin/brew'

# silence welcome message in interactive shells
set fish_greeting

starship init fish | source
atuin init fish | source

# Run fastfetch only once after boot or first shell start
if status is-interactive
    and not test -f /tmp/.fastfetch_shown
    if type -q fastfetch
        fastfetch
        touch /tmp/.fastfetch_shown
    end
end
