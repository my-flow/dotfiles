# Always enable colored `grep` output
# Note: `GREP_OPTIONS="--color=auto"` is deprecated, hence the alias usage.
abbr --add grep 'grep --color=auto'
abbr --add fgrep 'fgrep --color=auto'
abbr --add egrep 'egrep --color=auto'

# Format disk usage statistics in a human-readable manner
abbr --add du 'du -hc -d 1 | sort --reverse --sort=human-numeric | less -FX'

abbr --add ls 'ls -lhF'

# prefer eza instead of ls if available
if type -q eza
    abbr --add eza 'eza --all --classify --color=always --header --icons=always --long --time-style long-iso'
    abbr --add ls 'eza --all --classify --color=always --header --icons=always --long --time-style long-iso | less -RFX'
end

abbr --add rm 'rm -v'
abbr --add cp 'cp -v'
abbr --add mv 'mv -v'

function mosh_tmux
    echo $argv -- tmux a
end

