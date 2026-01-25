function zmosh
    # Ensure we have at least one argument (the host)
    if not set -q argv[1]
        echo "Usage: zmosh <user@host>"
        return 1
    end

    mosh $argv -- zellij attach --create --index 0
end
