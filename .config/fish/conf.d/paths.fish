fish_add_path ~/.local/bin

switch (uname)
    case Darwin
        fish_add_path /Applications/kdiff3.app/Contents/MacOS
        fish_add_path /Library/TeX/texbin
    case Linux
        fish_add_path /usr/local/texlive/2025/bin/aarch64-linux
end
