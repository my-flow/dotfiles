fish_add_path ~/.local/bin

switch (uname)
    case Darwin
        fish_add_path /Applications/kdiff3.app/Contents/MacOS
        fish_add_path /Library/TeX/texbin
    case Linux
        set -l arch (uname -m)
        set -l texlive_dirs /usr/local/texlive/*/bin/$arch-linux 2>/dev/null
        if set -q texlive_dirs[1]
            fish_add_path $texlive_dirs[-1]
        end
end
