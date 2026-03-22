abbr --add rm 'rm -v'
abbr --add cp 'cp -v'
abbr --add mv 'mv -v'

# Format disk usage statistics in a human-readable manner
abbr --add du 'du -hc -d 1 | sort --reverse --sort=human-numeric | less -FX'

# prefer eza instead of ls if available
abbr --add ls 'ls -lhF'
if type -q eza
    abbr --add eza 'eza --all --classify --color=always --header --icons=always --long --time-style long-iso'
    abbr --add ls 'eza --all --classify --color=always --header --icons=auto --long --time-style long-iso | less -RFX'
end

abbr --add lsblk 'lsblk --fs'

# Always enable colored `grep` output
# Note: `GREP_OPTIONS="--color=auto"` is deprecated, hence the alias usage.
abbr --add grep 'grep --color=auto'
abbr --add egrep 'egrep --color=auto'
abbr --add fgrep 'fgrep --color=auto'

# https://dev.yorhel.nl/ncdu/scr
abbr --add ncdu 'ncdu --color=dark --disable-delete --extended --show-itemcount --show-percent'

# Ignore error messages of ripgrep-all
abbr --add rga 'rga --no-messages'

# View inline images in w3m with iTerm2
abbr --add w3m 'w3m -sixel'

# wget
abbr --add wget 'wget --hsts-file=$XDG_DATA_HOME/wget-hsts'
